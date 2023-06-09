-- DB update 2023_02_17_05 -> 2023_02_17_06
-- Fix obsolete SAI
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 18693);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18693, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 300000, 600000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - Out of Combat - Say Line 0'),
(18693, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - On Aggro - Say Line 1'),
(18693, 0, 2, 0, 8, 0, 100, 0, 0, 4, 0, 0, 0, 11, 37844, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - On Spellhit \'Fire\' - Cast \'Fire Ward\''),
(18693, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 11, 15497, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - On Aggro - Cast \'Frostbolt\''),
(18693, 0, 4, 0, 0, 0, 100, 0, 4000, 6000, 4000, 9000, 0, 11, 15241, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - In Combat - Cast \'Scorch\''),
(18693, 0, 5, 0, 0, 0, 100, 0, 8000, 10000, 5500, 11000, 0, 11, 12466, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Speaker Mar\'grom - In Combat - Cast \'Fireball\'');

-- Re-create all spawns, keeping same guids for consistency
DELETE FROM `creature` WHERE `id1`=18693;
INSERT INTO `creature` (`guid`, `id1`, `map`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `MovementType`) VALUES
(151923, 18693, 530, 1, 3423.68, 5234.66, -1.64516, 0.390538, 28800, 2),
(151924, 18693, 530, 1, 3513.65, 5814.84, 1.3485, 5.11864, 28800, 2),
(151925, 18693, 530, 1, 2591.28, 6647.56, 20.5184, 4.27041, 28800, 2),
(151926, 18693, 530, 1, 1597.84, 6302.81, 2.42134, 1.1406, 28800, 2);

DELETE FROM `creature_addon` WHERE (`guid` IN (151923, 151924, 151925, 151926));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(151923, 1519230, 0, 0, 1, 0, 0, ''),
(151924, 1519240, 0, 0, 1, 0, 0, ''),
(151925, 1519250, 0, 0, 1, 0, 0, ''),
(151926, 1519260, 0, 0, 1, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (1519230, 1519240, 1519250, 1519260);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(1519230, 1, 3423.68, 5234.66, -1.64517),
(1519230, 2, 3464.52, 5243.7, -17.2122),
(1519230, 3, 3494.65, 5255.18, -23.4995),
(1519230, 4, 3599.2, 5285.24, -20.9848),
(1519230, 5, 3615.35, 5303.18, -21.4601),
(1519230, 6, 3685.35, 5305.97, -10.3391),
(1519230, 7, 3696.35, 5341.28, -8.04401),
(1519230, 8, 3684.33, 5307.79, -10.2238),
(1519230, 9, 3662.39, 5293.46, -16.4249),
(1519230, 10, 3634.07, 5265.84, -18.4172),
(1519230, 11, 3498.42, 5246.98, -23.9909),
(1519230, 12, 3428.78, 5232.17, -2.50548),
(1519230, 13, 3423.68, 5234.66, -1.64517),
(1519240, 1, 3513.65, 5814.84, 1.3485),
(1519240, 2, 3512.02, 5799.74, 1.41278),
(1519240, 3, 3530.03, 5783.1, 1.10585),
(1519240, 4, 3520.9, 5718.75, -8.51194),
(1519240, 5, 3491.92, 5678.48, -10.2608),
(1519240, 6, 3477.42, 5677.66, -10.3302),
(1519240, 7, 3373.28, 5709.29, -8.96263),
(1519240, 8, 3345.89, 5723.91, -9.23825),
(1519240, 9, 3293.24, 5717.23, -5.64248),
(1519240, 10, 3259.54, 5712.96, -5.50513),
(1519240, 11, 3221.99, 5698.82, -1.37267),
(1519240, 12, 3199.5, 5701.67, -1.09314),
(1519240, 13, 3190.4, 5719.89, -2.61677),
(1519240, 14, 3192.56, 5751.82, -6.81616),
(1519240, 15, 3168.25, 5778.94, -8.55679),
(1519240, 16, 3127.9, 5805.64, -0.243023),
(1519240, 17, 3105.05, 5814.77, -0.544315),
(1519240, 18, 3098.23, 5844.4, -0.14785),
(1519250, 1, 2591.28, 6647.56, 20.5184),
(1519250, 2, 2565.15, 6596.23, 3.81927),
(1519250, 3, 2579.03, 6559.81, 0.766655),
(1519250, 4, 2629.45, 6529.42, 0.730476),
(1519250, 5, 2664.63, 6524.38, 0.737788),
(1519250, 6, 2661.14, 6500.69, 3.46986),
(1519250, 7, 2636.46, 6505.5, 0.781365),
(1519250, 8, 2628.81, 6528.51, 0.751674),
(1519250, 9, 2581.36, 6554.37, 0.726271),
(1519250, 10, 2532.35, 6552.23, 0.726537),
(1519250, 11, 2502.79, 6559.41, -0.565026),
(1519250, 12, 2455.49, 6590.22, 0.725978),
(1519250, 13, 2428.18, 6580.25, 1.22745),
(1519250, 14, 2361.18, 6573.57, 0.746049),
(1519250, 15, 2396.47, 6640.43, 4.56912),
(1519250, 16, 2348.9, 6666.78, 15.8121),
(1519250, 17, 2340.19, 6641.97, 17.2369),
(1519250, 18, 2355.62, 6660.17, 15.7736),
(1519250, 19, 2394.16, 6648.3, 5.75975),
(1519250, 20, 2454.44, 6593.23, 0.72801),
(1519250, 21, 2511.43, 6577.86, 0.594083),
(1519250, 22, 2550.23, 6602.69, 2.81895),
(1519250, 23, 2582.76, 6638.13, 16.7397),
(1519260, 1, 1597.84, 6302.81, 2.42134),
(1519260, 2, 1648.49, 6315.82, -0.352608),
(1519260, 3, 1699.12, 6286.55, -0.541084),
(1519260, 4, 1647.24, 6317.92, -0.300317),
(1519260, 5, 1637.42, 6358.49, -4.58161),
(1519260, 6, 1642.03, 6389.42, -10.254),
(1519260, 7, 1473.67, 6508.8, -10.3382),
(1519260, 8, 1442.98, 6540.58, -10.2885),
(1519260, 9, 1478.94, 6526.28, -10.3382),
(1519260, 10, 1611.67, 6422.75, -10.3573),
(1519260, 11, 1628.77, 6392.04, -10.2012),
(1519260, 12, 1643.41, 6366.21, -6.10626),
(1519260, 13, 1591.97, 6327.18, 1.16319),
(1519260, 14, 1561.41, 6323.68, 1.16169),
(1519260, 15, 1520.63, 6359.26, 1.01601),
(1519260, 16, 1560.34, 6328.22, 1.06103),
(1519260, 17, 1590.25, 6327.65, 1.15933),
(1519260, 18, 1594.09, 6307.41, 1.97837);

DELETE FROM `pool_template` WHERE `entry`=1083 AND `description` LIKE '%Speaker Mar%';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1083, 1, 'Speaker Mar\'grom (18693)');

DELETE FROM `pool_creature` WHERE `pool_entry`=1083 AND `description` LIKE '%Speaker Mar%';
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(151923, 1083, 0, 'Speaker Mar\'grom (18693)'),
(151924, 1083, 0, 'Speaker Mar\'grom (18693)'),
(151925, 1083, 0, 'Speaker Mar\'grom (18693)'),
(151926, 1083, 0, 'Speaker Mar\'grom (18693)');
