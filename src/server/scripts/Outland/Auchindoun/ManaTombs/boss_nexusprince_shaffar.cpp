/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "mana_tombs.h"

enum ePrince
{
    SAY_INTRO                       = 0,
    SAY_AGGRO                       = 1,
    SAY_SLAY                        = 2,
    SAY_SUMMON                      = 3,
    SAY_DEAD                        = 4,

    SPELL_BLINK                     = 34605,
    SPELL_FROSTBOLT                 = 32364,
    SPELL_FIREBALL                  = 32363,
    SPELL_FROSTNOVA                 = 32365,

    SPELL_ETHEREAL_BEACON           = 32371,                // Summons NPC_BEACON
    SPELL_ETHEREAL_BEACON_VISUAL    = 32368,

    NPC_BEACON                      = 18431,
    NPC_SHAFFAR                     = 18344,

    EVENT_SPELL_BEACON              = 1,
    EVENT_SPELL_FR_FI               = 2,
    EVENT_SPELL_FROST_NOVA          = 3,
    EVENT_SPELL_BLINK               = 4,
};

class boss_nexusprince_shaffar : public CreatureScript
{
public:
    boss_nexusprince_shaffar() : CreatureScript("boss_nexusprince_shaffar") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetManaTombsAI<boss_nexusprince_shaffarAI>(creature);
    }

    struct boss_nexusprince_shaffarAI : public ScriptedAI
    {
        boss_nexusprince_shaffarAI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
            HasTaunted = false;
        }

        EventMap events;
        SummonList summons;
        bool HasTaunted;

        void Reset() override
        {
            float dist = 8.0f;
            float posX, posY, posZ, angle;
            me->GetHomePosition(posX, posY, posZ, angle);

            summons.DespawnAll();
            events.Reset();
            me->SummonCreature(NPC_BEACON, posX - dist, posY - dist, posZ, angle, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 7200000);
            me->SummonCreature(NPC_BEACON, posX - dist, posY + dist, posZ, angle, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 7200000);
            me->SummonCreature(NPC_BEACON, posX + dist, posY, posZ, angle, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 7200000);
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!HasTaunted && who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 100.0f))
            {
                Talk(SAY_INTRO);
                HasTaunted = true;
            }
        }

        void JustEngagedWith(Unit*) override
        {
            Talk(SAY_AGGRO);

            me->SetInCombatWithZone();
            summons.DoZoneInCombat();

            events.ScheduleEvent(EVENT_SPELL_BEACON, 10000);
            events.ScheduleEvent(EVENT_SPELL_FR_FI, 4000);
            events.ScheduleEvent(EVENT_SPELL_FROST_NOVA, 15000);
        }

        void JustSummoned(Creature* summon) override
        {
            if (me->IsInCombat() && summon->GetEntry() == NPC_BEACON)
            {
                summon->CastSpell(summon, SPELL_ETHEREAL_BEACON_VISUAL, false);
                if (Unit* target = SelectTargetFromPlayerList(50.0f))
                    summon->AI()->AttackStart(target);
            }

            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature* summon) override
        {
            summons.Despawn(summon);
        }

        void KilledUnit(Unit* victim) override
        {
            if (victim->GetTypeId() == TYPEID_PLAYER)
                Talk(SAY_SLAY);
        }

        void JustDied(Unit* /*killer*/) override
        {
            Talk(SAY_DEAD);
            summons.DespawnAll();
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_SPELL_FROST_NOVA:
                    me->CastSpell(me, SPELL_FROSTNOVA, false);
                    events.RepeatEvent(urand(16000, 23000));
                    events.DelayEvents(1500);
                    events.ScheduleEvent(EVENT_SPELL_BLINK, 1500);
                    break;
                case EVENT_SPELL_FR_FI:
                    me->CastSpell(me->GetVictim(), RAND(SPELL_FROSTBOLT, SPELL_FIREBALL), false);
                    events.RepeatEvent(urand(3000, 4000));
                    break;
                case EVENT_SPELL_BLINK:
                    me->CastSpell(me, SPELL_BLINK, false);
                    events.RescheduleEvent(EVENT_SPELL_FR_FI, 0);
                    break;
                case EVENT_SPELL_BEACON:
                    if (!urand(0, 3))
                        Talk(SAY_SUMMON);

                    me->CastSpell(me, SPELL_ETHEREAL_BEACON, true);
                    events.RepeatEvent(10000);
                    break;
            }

            DoMeleeAttackIfReady();
        }
    };
};

enum Yor
{
    SPELL_DOUBLE_BREATH = 38361,
    EVENT_DOUBLE_BREATH = 1
};

class npc_yor : public CreatureScript
{
public:
    npc_yor() : CreatureScript("npc_yor") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetManaTombsAI<npc_yorAI>(creature);
    }

    struct npc_yorAI : public ScriptedAI
    {
        npc_yorAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override { }

        void JustEngagedWith(Unit* /*who*/) override
        {
            events.ScheduleEvent(EVENT_DOUBLE_BREATH, urand(6000, 9000));
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_DOUBLE_BREATH:
                        if (me->IsWithinDist(me->GetVictim(), ATTACK_DISTANCE))
                            DoCastVictim(SPELL_DOUBLE_BREATH);
                        events.ScheduleEvent(EVENT_DOUBLE_BREATH, urand(6000, 9000));
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        EventMap events;
    };
};

void AddSC_boss_nexusprince_shaffar()
{
    new boss_nexusprince_shaffar();
    new npc_yor();
}
