-- DB update 2023_02_16_01 -> 2023_02_16_02
-- Delete all old spawns
DELETE FROM `creature` WHERE `id1` IN (21788, 21795);

DELETE FROM `creature` WHERE `id1`=21788 AND `guid` IN (1162,1215,1317,1345,1361,1369,1374,1377,1382,1383,1392,1395,1528,1636,1881,1882,2212,2554,2577,2588,2606,2688,3137,3239,3243,3246,3255,3257,3258,3261,3262,3552,3554,3558,3567,3570,3573,3574,3578,3583,6294);
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `MovementType`, `VerifiedBuild`) VALUES
(1162, 21788, 530, 3520, 3744, 1, 1, 1, -2999.42, 2619.98, 76.7438, 1.65806, 300, 0, 0, 48069),
(1215, 21788, 530, 3520, 3744, 1, 1, 1, -2985.53, 2556.82, 76.6267, 3.9619, 300, 0, 0, 48069),
(1317, 21788, 530, 3520, 3744, 1, 1, 1, -2987.33, 2568.42, 76.6267, 5.84685, 300, 0, 0, 48069),
(1345, 21788, 530, 3520, 3744, 1, 1, 1, -2977.33, 2574.98, 76.6267, 1.41372, 300, 0, 0, 48069),
(1361, 21788, 530, 3520, 3744, 1, 1, 1, -2950.32, 2627.79, 90.1358, 3.91042, 300, 0, 2, 48069),
(1369, 21788, 530, 3520, 3744, 1, 1, 1, -2965.68, 2540.96, 76.6267, 4.45059, 300, 0, 0, 48069),
(1374, 21788, 530, 3520, 3744, 1, 1, 1, -2932.27, 2652.53, 93.7619, 3.9619, 300, 0, 0, 48069),
(1377, 21788, 530, 3520, 3744, 1, 1, 1, -3016.36, 2549.72, 79.1196, 1.29154, 300, 0, 0, 48069),
(1382, 21788, 530, 3520, 3744, 1, 1, 1, -3028.98, 2656.45, 77.0467, 4.20624, 300, 0, 0, 48069),
(1383, 21788, 530, 3520, 3744, 1, 1, 1, -3046.55, 2641.27, 76.6267, 5.91667, 300, 0, 0, 48069),
(1392, 21788, 530, 3520, 3744, 1, 1, 1, -2907.59, 2603.01, 93.7636, 2.42601, 300, 0, 0, 48069),
(1395, 21788, 530, 3520, 3744, 1, 1, 1, -2903.63, 2615.3, 93.7636, 3.07178, 300, 0, 0, 48069),
(1528, 21788, 530, 3520, 3744, 1, 1, 1, -2926.18, 2646.13, 93.7365, 3.68264, 300, 0, 0, 48069),
(1636, 21788, 530, 3520, 3744, 1, 1, 1, -3036.08, 2528.19, 63.4115, 5.16617, 300, 0, 0, 48069),
(1881, 21788, 530, 3520, 3744, 1, 1, 1, -2963.02, 2518.09, 78.1958, 0.10472, 300, 0, 0, 48069),
(1882, 21788, 530, 3520, 3744, 1, 1, 1, -3039.82, 2590.35, 75.343, 4.08158, 300, 0, 2, 48069),
(2212, 21788, 530, 3520, 3744, 1, 1, 1, -3020.44, 2502.76, 62.7676, 0.296706, 300, 0, 0, 48069),
(2554, 21788, 530, 3520, 3744, 1, 1, 1, -3001.51, 2507.45, 61.3395, 1.55334, 300, 0, 0, 48069),
(2577, 21788, 530, 3520, 3744, 1, 1, 1, -2939.04, 2675.21, 93.7636, 4.43314, 300, 0, 0, 48069),
(2588, 21788, 530, 3520, 3744, 1, 1, 1, -3073.79, 2609.98, 61.8124, 1.11701, 300, 0, 0, 48069),
(2606, 21788, 530, 3520, 3744, 1, 1, 1, -3022.7, 2512.11, 68.6565, 0.383972, 300, 0, 0, 48069),
(2688, 21788, 530, 3520, 3744, 1, 1, 1, -3034.21, 2499.92, 63.1432, 1.48353, 300, 0, 0, 48069),
(3137, 21788, 530, 3520, 3744, 1, 1, 1, -3079.53, 2527.94, 62.6586, 0.15708, 300, 0, 0, 48069),
(3239, 21788, 530, 3520, 3744, 1, 1, 1, -3088.92, 2564.31, 61.9645, 1.16096, 300, 0, 2, 48069),
(3243, 21788, 530, 3520, 3744, 1, 1, 1, -3090.44, 2579.88, 61.8531, 4.81711, 300, 0, 0, 48069),
(3246, 21788, 530, 3520, 3744, 1, 1, 1, -3067.42, 2495.91, 64.7398, 1.5708, 300, 0, 0, 48069),
(3255, 21788, 530, 3520, 3744, 1, 1, 1, -3116.47, 2572.71, 61.8892, 0.10472, 300, 0, 0, 48069),
(3257, 21788, 530, 3520, 3744, 1, 1, 1, -3115.36, 2556.79, 61.9195, 0.314159, 300, 0, 0, 48069),
(3258, 21788, 530, 3520, 3744, 1, 1, 1, -3130.25, 2537.19, 61.8124, 0.925025, 300, 0, 0, 48069),
(3261, 21788, 530, 3520, 3744, 1, 1, 1, -3133.15, 2585.91, 61.8072, 2.86234, 300, 0, 0, 48069),
(3262, 21788, 530, 3520, 3744, 1, 1, 1, -3133.63, 2548.74, 62.054, 6.19592, 300, 0, 0, 48069),
(3552, 21788, 530, 3520, 3744, 1, 1, 1, -3122.75, 2501.02, 62.7039, 5.51524, 300, 0, 0, 48069),
(3554, 21788, 530, 3520, 3744, 1, 1, 1, -3061.51, 2459.65, 65.1814, 4.5204, 300, 0, 0, 48069),
(3558, 21788, 530, 3520, 3744, 1, 1, 1, -3125.39, 2489.52, 62.0623, 5.11381, 300, 0, 0, 48069),
(3567, 21788, 530, 3520, 3744, 1, 1, 1, -3072.73, 2425.39, 62.5464, 4.25418, 300, 0, 2, 48069),
(3570, 21788, 530, 3520, 3744, 1, 1, 1, -3115.36, 2440.23, 64.6714, 1.90241, 300, 0, 0, 48069),
(3573, 21788, 530, 3520, 3744, 1, 1, 1, -3147.67, 2577.59, 62.381, 1.8675, 300, 0, 0, 48069),
(3574, 21788, 530, 3520, 3744, 1, 1, 1, -3163.9, 2579.59, 62.7036, 0.488692, 300, 0, 0, 48069),
(3578, 21788, 530, 3520, 3744, 1, 1, 1, -3138.01, 2452.76, 63.8288, 4.15388, 300, 0, 0, 48069),
(3583, 21788, 530, 3520, 3744, 1, 1, 1, -3144.15, 2617.15, 61.8556, 3.75246, 300, 0, 0, 48069),
(6294, 21788, 530, 3520, 3744, 1, 1, 1, -3090.62, 2402.48, 63.1453, 4.31096, 300, 0, 0, 48069);

-- Add missing aura
UPDATE `creature_template_addon` SET `bytes2` = 1, `auras` = '37509 37467' WHERE (`entry` = 21788);

-- EmoteStates
DELETE FROM `creature_addon` WHERE (`guid` IN (1317,1881,1162,1636,2688,2212,2554,2606,2588,1383,1382,3583,3574,3573,3261,3570,3578,3558,3552,3258,3262));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(1317, 0, 0, 0, 1, 69, 0, '37509 37467'),
(1881, 0, 0, 0, 1, 69, 0, '37509 37467'),
(1162, 0, 0, 0, 1, 69, 0, '37509 37467'),
(1636, 0, 0, 0, 1, 173, 0, '37509 37467'),
(2688, 0, 0, 0, 1, 173, 0, '37509 37467'),
(2212, 0, 0, 0, 1, 173, 0, '37509 37467'),
(2554, 0, 0, 0, 1, 173, 0, '37509 37467'),
(2606, 0, 0, 0, 1, 173, 0, '37509 37467'),
(2588, 0, 0, 0, 1, 173, 0, '37509 37467'),
(1383, 0, 0, 0, 1, 173, 0, '37509 37467'),
(1382, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3583, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3574, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3573, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3261, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3570, 0, 0, 0, 1, 69, 0, '37509 37467'),
(3578, 0, 0, 0, 1, 69, 0, '37509 37467'),
(3558, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3552, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3258, 0, 0, 0, 1, 173, 0, '37509 37467'),
(3262, 0, 0, 0, 1, 173, 0, '37509 37467');

SET @NPC := 1882;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-2983.5215,`position_y`=2598.1836,`position_z`=78.26283 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '37509 37467');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2983.5215,2598.1836,78.26283,NULL,0,0,0,100,0),
(@PATH,2,-3024.7961,2595.5806,76.43522,NULL,0,0,0,100,0),
(@PATH,3,-3039.0452,2591.4111,75.666115,NULL,0,0,0,100,0),
(@PATH,4,-3047.9443,2579.204,72.64109,NULL,0,0,0,100,0),
(@PATH,5,-3061.8794,2539.9922,62.18476,NULL,0,0,0,100,0),
(@PATH,6,-3091.3047,2537.0774,61.979004,NULL,0,0,0,100,0),
(@PATH,7,-3061.8794,2539.9922,62.18476,NULL,0,0,0,100,0),
(@PATH,8,-3047.9443,2579.204,72.64109,NULL,0,0,0,100,0),
(@PATH,9,-3039.0957,2591.3184,75.63206,NULL,0,0,0,100,0),
(@PATH,10,-3024.7961,2595.5806,76.43522,NULL,0,0,0,100,0);

SET @NPC := 1361;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-2933.8972,`position_y`=2643.6787,`position_z`=93.74599 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '37509 37467');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1 ,-2933.8972,2643.6787,93.74599,NULL,0,0,0,100,0),
(@PATH,2 ,-2955.7297,2622.529,88.13892,NULL,0,0,0,100,0),
(@PATH,3 ,-2980.0588,2599.9182,78.87392,NULL,0,0,0,100,0),
(@PATH,4 ,-2978.64,2596.0317,78.716446,NULL,0,0,0,100,0),
(@PATH,5 ,-2972.57,2581.042,76.66835,NULL,0,0,0,100,0),
(@PATH,6 ,-2972.9563,2575.763,76.72368,NULL,0,0,0,100,0),
(@PATH,7 ,-2975.4248,2570.8157,78.03902,NULL,0,0,0,100,0),
(@PATH,8 ,-2982.6028,2555.2698,77.1833,NULL,0,0,0,100,0),
(@PATH,9 ,-2985.2214,2550.3682,76.64052,NULL,0,0,0,100,0),
(@PATH,10,-2982.6028,2555.2698,77.1833,NULL,0,0,0,100,0),
(@PATH,11,-2975.4248,2570.8157,78.03902,NULL,0,0,0,100,0),
(@PATH,12,-2972.9563,2575.763,76.72368,NULL,0,0,0,100,0),
(@PATH,13,-2972.57,2581.042,76.66835,NULL,0,0,0,100,0),
(@PATH,14,-2978.64,2596.0317,78.716446,NULL,0,0,0,100,0),
(@PATH,15,-2980.0588,2599.9182,78.87392,NULL,0,0,0,100,0),
(@PATH,16,-2955.7297,2622.529,88.13892,NULL,0,0,0,100,0);

SET @NPC := 3239;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3093.9133,`position_y`=2552.819,`position_z`=61.854004 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '37509 37467');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3093.9133,2552.819,61.854004,NULL,0,0,0,100,0),
(@PATH,2,-3088.2668,2565.8164,61.979004,NULL,0,0,0,100,0),
(@PATH,3,-3092.8552,2574.3938,61.85414,NULL,0,0,0,100,0),
(@PATH,4,-3104.494,2575.0054,61.879585,NULL,0,0,0,100,0),
(@PATH,5,-3114.3167,2564.6672,61.751812,NULL,0,0,0,100,0),
(@PATH,6,-3103.5955,2551.0715,61.751812,NULL,0,0,0,100,0);

SET @NPC := 3567;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3069.491,`position_y`=2529.9836,`position_z`=61.854004 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,1,0,0, '37509 37467');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3069.491,2529.9836,61.854004,NULL,0,0,0,100,0),
(@PATH,2,-3070.1697,2512.4446,62.604004,NULL,0,0,0,100,0),
(@PATH,3,-3062.1099,2501.7195,63.482788,NULL,0,0,0,100,0),
(@PATH,4,-3062.6467,2491.8025,64.98155,NULL,0,0,0,100,0),
(@PATH,5,-3063.126,2487.5073,64.8179,NULL,0,0,0,100,0),
(@PATH,6,-3065.7622,2464.375,65.06447,NULL,0,0,0,100,0),
(@PATH,7,-3066.259,2460.8157,65.101944,NULL,0,0,0,100,0),
(@PATH,8,-3071.4614,2433.7969,63.650608,NULL,0,0,0,100,0),
(@PATH,9,-3072.3816,2426.0962,62.559624,NULL,0,0,0,100,0),
(@PATH,10,-3083.289,2403.9827,62.741753,NULL,0,0,0,100,0),
(@PATH,11,-3088.302,2397.173,62.38616,NULL,0,0,0,100,0),
(@PATH,12,-3083.289,2403.9827,62.741753,NULL,0,0,0,100,0),
(@PATH,13,-3072.3816,2426.0962,62.559624,NULL,0,0,0,100,0),
(@PATH,14,-3065.7622,2464.375,65.06447,NULL,0,0,0,100,0),
(@PATH,15,-3063.126,2487.5073,64.8179,NULL,0,0,0,100,0),
(@PATH,16,-3062.6467,2491.8025,64.98155,NULL,0,0,0,100,0),
(@PATH,17,-3062.1099,2501.7195,63.482788,NULL,0,0,0,100,0),
(@PATH,18,-3070.1697,2512.4446,62.604004,NULL,0,0,0,100,0);

-- Corrects Positions of some NPCs
UPDATE `creature` SET `position_x`=-2903.655029296875, `position_y`=2615.60546875, `position_z`=93.76357269287109375, `orientation`=2.932153224945068359 WHERE `id1`=19343 AND `guid`=68959;
UPDATE `creature` SET `position_x`=-2908.09375, `position_y`=2603.760498046875, `position_z`=93.76357269287109375, `orientation`=2.30383467674255371 WHERE `id1`=19345 AND `guid`=68961;
UPDATE `creature` SET `position_x`=-2939.28369140625, `position_y`=2675.38134765625, `position_z`=93.76357269287109375, `orientation`=4.468042850494384765 WHERE `id1`=19348 AND `guid`=68964;
UPDATE `creature` SET `position_x`=-2999.8582, `position_y`=2619.497, `position_z`=76.782364, `orientation`=4.86946868896484375 WHERE `id1`=25099 AND `guid`=41791;

-- Zealot Equip Template
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 21788);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(21788, 1, 1902, 0, 0, 0);

-- Shadowmoon Harbingers
DELETE FROM `creature` WHERE `id1`=21795 AND `guid` IN (7202 ,8311 ,10196,11502,11511,11600,11601,11747,12158,12160,12161,12162,12163,12457,12582,12583,12606,12607,12811,12812,12817,12819,13050,14076,14324,14325,14326,14327,14328,14329,14330,14331,14332,14346,14543,14544,14547,14551,14558,14561,14579,14634,14638,15928,16383,16385,16387,20941,20942,23441,23741,23743,23744);
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `MovementType`, `VerifiedBuild`) VALUES
(7202, 21795, 530, 3520, 3745, 0, -4050.8, 2243.12, 112.043, 5.6946, 300, 2, 1, 48069),
(8311, 21795, 530, 3520, 3745, 0, -4080.77, 2180.18, 100.277, 6.24393, 300, 2, 1, 48069),
(10196, 21795, 530, 3520, 3745, 0, -4086.96, 2167.92, 111.387, 0.0649286, 300, 2, 1, 48069),
(11502, 21795, 530, 3520, 3745, 0, -4054.94, 2274.02, 121.762, 3.39019, 300, 2, 1, 48069),
(11511, 21795, 530, 3520, 3745, 0, -3999.76, 2176.03, 104.419, 5.62719, 300, 0, 2, 48069),
(11600, 21795, 530, 3520, 3745, 0, -4070.18, 2227.96, 113.434, 2.43949, 300, 2, 1, 48069),
(11601, 21795, 530, 3520, 3745, 0, -3939.28, 2225.49, 101.916, 3.34277, 300, 3, 1, 48069),
(11747, 21795, 530, 3520, 3745, 0, -4029.85, 2166.81, 106.749, 2.4746, 300, 3, 1, 48069),
(12158, 21795, 530, 3520, 3745, 0, -4085.28, 2247.69, 121.762, 4.80283, 300, 2, 1, 48069),
(12160, 21795, 530, 3520, 3745, 0, -4019.56, 2140.34, 104.301, 4.00924, 300, 2, 1, 48069),
(12161, 21795, 530, 3520, 3745, 0, -4074.58, 2178.52, 107.496, 5.21588, 300, 2, 1, 48069),
(12162, 21795, 530, 3520, 3745, 0, -3984.63, 2198.21, 101.978, 2.99783, 300, 3, 1, 48069),
(12163, 21795, 530, 3520, 3745, 0, -4087, 2244.29, 112.043, 2.76699, 300, 2, 1, 48069),
(12457, 21795, 530, 3520, 3745, 0, -3987.09, 2152.82, 104.346, 5.47441, 300, 3, 1, 48069),
(12582, 21795, 530, 3520, 3745, 0, -4008.08, 2160.41, 105.051, 6.10071, 300, 0, 2, 48069),
(12583, 21795, 530, 3520, 3745, 0, -4092.31, 2182.77, 106.936, 1.42375, 300, 2, 1, 48069),
(12606, 21795, 530, 3520, 3745, 0, -3956.32, 2237.76, 101.962, 2.20807, 300, 0, 2, 48069),
(12607, 21795, 530, 3520, 3745, 0, -4066.46, 2258.75, 94.8242, 5.52225, 300, 2, 1, 48069),
(12811, 21795, 530, 3520, 3745, 0, -3997.78, 2140.65, 104.734, 1.15619, 300, 0, 2, 48069),
(12812, 21795, 530, 3520, 3745, 0, -3941.4, 2192.35, 101.924, 1.11448, 300, 3, 1, 48069),
(12817, 21795, 530, 3520, 3745, 0, -4034.84, 2262.57, 113.434, 3.23854, 300, 2, 1, 48069),
(12819, 21795, 530, 3520, 3745, 0, -4093.05, 2185.36, 100.277, 1.10346, 300, 2, 1, 48069),
(13050, 21795, 530, 3520, 3745, 0, -4070.78, 2261.45, 112.043, 3.61995, 300, 2, 1, 48069),
(14076, 21795, 530, 3520, 3745, 0, -4087.86, 2207.58, 97.2149, 4.31553, 300, 2, 1, 48069),
(14324, 21795, 530, 3520, 3745, 0, -4052.95, 2279.67, 112.043, 1.38974, 300, 2, 1, 48069),
(14325, 21795, 530, 3520, 3745, 0, -3974.89, 2120.57, 104.232, 2.66117, 300, 3, 1, 48069),
(14326, 21795, 530, 3520, 3745, 0, -4074.12, 2266.24, 94.8243, 2.22216, 300, 2, 1, 48069),
(14327, 21795, 530, 3520, 3745, 0, -3939.81, 2152.92, 100.524, 1.08951, 300, 3, 1, 48069),
(14328, 21795, 530, 3520, 3745, 0, -3998.09, 2097.96, 137.242, 2.75096, 300, 0, 2, 48069),
(14329, 21795, 530, 3520, 3745, 0, -3949.75, 2265.68, 99.2305, 3.45364, 300, 3, 1, 48069),
(14330, 21795, 530, 3520, 3745, 0, -4086.29, 2261.55, 103.981, 4.91699, 300, 2, 1, 48069),
(14331, 21795, 530, 3520, 3745, 0, -4069.3, 2287.77, 103.98, 5.17287, 300, 2, 1, 48069),
(14332, 21795, 530, 3520, 3745, 0, -4096.8, 2258.41, 103.98, 4.80697, 300, 2, 1, 48069),
(14346, 21795, 530, 3520, 3745, 0, -3941.76, 2174.4, 101.475, 2.1149, 300, 0, 2, 48069),
(14543, 21795, 530, 3520, 3745, 0, -3915.35, 2108.43, 97.1916, 4.14084, 300, 3, 1, 48069),
(14544, 21795, 530, 3520, 3745, 0, -3914.45, 2103.59, 96.1418, 0.586566, 300, 3, 1, 48069),
(14547, 21795, 530, 3520, 3745, 0, -3858.33, 2202.6, 95.8032, 4.71239, 300, 12, 1, 48069),
(14551, 21795, 530, 3520, 3745, 0, -4070.84, 2292.97, 110.652, 5.08149, 300, 0, 0, 48069),
(14558, 21795, 530, 3520, 3745, 0, -4087.17, 2284.47, 103.98, 0.493549, 300, 0, 0, 48069),
(14561, 21795, 530, 3520, 3745, 0, -4077.56, 2297.66, 121.762, 5.84576, 300, 0, 0, 48069),
(14579, 21795, 530, 3520, 3745, 0, -4103.11, 2262.73, 110.652, 5.04158, 300, 0, 0, 48069),
(14634, 21795, 530, 3520, 3745, 0, -4094.2, 2275.16, 112.043, 1.64821, 300, 0, 0, 48069),
(14638, 21795, 530, 3520, 3745, 0, -4110.22, 2271.54, 121.762, 1.72507, 300, 0, 0, 48069),
(15928, 21795, 530, 3520, 3745, 0, -4109.65, 2297.24, 121.762, 1.22016, 300, 0, 0, 48069),
(16383, 21795, 530, 3520, 3745, 0, -3957.69, 2047.99, 95.1048, 0.965733, 300, 12, 1, 48069),
(16385, 21795, 530, 3520, 3745, 0, -3923.67, 2053.05, 95.1598, 4.87277, 300, 12, 1, 48069),
(16387, 21795, 530, 3520, 3745, 0, -3837.59, 2114.16, 94.0097, 6.05016, 300, 12, 1, 48069),
(20941, 21795, 530, 3520, 3745, 0, -3823.16, 2115.78, 91.368, 6.27049, 300, 12, 1, 48069),
(20942, 21795, 530, 3520, 3745, 0, -3841.24, 2176.07, 95.0957, 2.06718, 300, 12, 1, 48069),
(23441, 21795, 530, 3520, 3745, 0, -3848.2, 2249.49, 96.1485, 2.75056, 300, 0, 0, 48069),
(23741, 21795, 530, 3520, 3745, 0, -3820.97, 2188.18, 91.1958, 2.72862, 300, 12, 1, 48069),
(23743, 21795, 530, 3520, 3745, 0, -3822.84, 2231.41, 92.1447, 2.09902, 300, 0, 0, 48069),
(23744, 21795, 530, 3520, 3745, 0, -3999.95, 1999.96, 95.2805, 5.47502, 300, 0, 0, 48069);

-- Set movement for every harbinger inside the main building
UPDATE `creature` SET `wander_distance`=2, `MovementType`=1 WHERE `id1`=21795 AND `guid` IN (14332,14331,14330,14328,14326,14076,14324,13050,12817,12819,12607,12583,12158,12161,12163,11600,11502,10196,8311,7202,12161,12583,12160);
UPDATE `creature` SET `wander_distance`=12, `MovementType`=1 WHERE `id1`=21795 AND `guid` IN (16383,16387,20941,23741,20942,14547,16385);

SET @NPC := 11511;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3999.7612,`position_y`=2176.0293,`position_z`=104.41897 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3999.7612,2176.0293,104.41897,NULL,0,0,0,100,0),
(@PATH,2,-3972.0134,2190.886,101.88503,NULL,0,0,0,100,0),
(@PATH,3,-3972.9146,2202.0095,101.70632,NULL,0,0,0,100,0),
(@PATH,4,-3997.1401,2217.4153,104.72634,NULL,0,0,0,100,0),
(@PATH,5,-4022.4749,2218.094,110.06057,NULL,0,0,0,100,0),
(@PATH,6,-4025.8816,2219.4587,110.31728,NULL,0,0,0,100,0),
(@PATH,7,-4024.3582,2209.3901,109.74197,NULL,0,0,0,100,0),
(@PATH,8,-4020.0977,2186.2214,107.882095,NULL,0,0,0,100,0),
(@PATH,9,-4010.251,2178.6438,105.79164,NULL,0,0,0,100,0);

SET @NPC := 14346;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3941.764,`position_y`=2174.395,`position_z`=101.47483 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3941.764,2174.395,101.47483,NULL,0,0,0,100,0),
(@PATH,2,-3955.132,2167.856,100.00425,NULL,0,0,0,100,0),
(@PATH,3,-3952.9424,2141.3313,98.55625,NULL,0,0,0,100,0),
(@PATH,4,-3946.266,2130.2925,97.48784,NULL,0,0,0,100,0),
(@PATH,5,-3936.5078,2117.3242,96.29057,NULL,0,0,0,100,0),
(@PATH,6,-3931.6584,2103.5051,94.88107,NULL,0,0,0,100,0),
(@PATH,7,-3920.9348,2093.7053,94.28906,NULL,0,0,0,100,0),
(@PATH,8,-3911.3855,2084.8774,93.98193,NULL,0,0,0,100,0),
(@PATH,9,-3895.2727,2065.3416,94.288475,NULL,0,0,0,100,0),
(@PATH,10,-3911.3855,2084.8774,93.98193,NULL,0,0,0,100,0),
(@PATH,11,-3920.9348,2093.7053,94.28906,NULL,0,0,0,100,0),
(@PATH,12,-3931.6584,2103.5051,94.88107,NULL,0,0,0,100,0),
(@PATH,13,-3936.5078,2117.3242,96.29057,NULL,0,0,0,100,0),
(@PATH,14,-3946.266,2130.2925,97.48784,NULL,0,0,0,100,0),
(@PATH,15,-3952.9424,2141.3313,98.55625,NULL,0,0,0,100,0),
(@PATH,16,-3955.132,2167.856,100.00425,NULL,0,0,0,100,0);

SET @NPC := 14328;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3998.0916,`position_y`=2097.955,`position_z`=137.24152 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3998.0916,2097.955,137.24152,NULL,0,0,0,100,0),
(@PATH,2,-4033.5908,2115.7417,137.23189,NULL,0,0,0,100,0),
(@PATH,3,-4067.9219,2129.8794,137.2598,NULL,0,0,0,100,0),
(@PATH,4,-4033.5908,2115.7417,137.23189,NULL,0,0,0,100,0);

SET @NPC := 12811;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3997.7783,`position_y`=2140.6536,`position_z`=104.73433 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3997.7783,2140.6536,104.73433,NULL,0,0,0,100,0),
(@PATH,2,-4000.6433,2133.9727,105.73658,NULL,0,0,0,100,0),
(@PATH,3,-4006.1736,2121.4075,115.08989,NULL,0,0,0,100,0),
(@PATH,4,-4008.0847,2115.1497,115.623795,NULL,0,0,0,100,0),
(@PATH,5,-4047.5369,2133.2236,137.24315,NULL,0,0,0,100,0),
(@PATH,6,-4006.1736,2121.4075,115.08989,NULL,0,0,0,100,0),
(@PATH,7,-4000.6433,2133.9727,105.73658,NULL,0,0,0,100,0);

SET @NPC := 12582;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-4008.0833,`position_y`=2160.4094,`position_z`=105.05068 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4008.0833,2160.4094,105.05068,NULL,0,0,0,100,0),
(@PATH,2,-4004.2214,2174.4575,104.94032,NULL,0,0,0,100,0),
(@PATH,3,-4018.816,2179.6648,107.19447,NULL,0,0,0,100,0),
(@PATH,4,-4036.5151,2182.9263,108.911476,NULL,0,0,0,100,0),
(@PATH,5,-4018.816,2179.6648,107.19447,NULL,0,0,0,100,0),
(@PATH,6,-4004.2214,2174.4575,104.94032,NULL,0,0,0,100,0);

SET @NPC := 12606;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `wander_distance`=0,`MovementType`=2,`position_x`=-3956.3213,`position_y`=2237.7644,`position_z`=101.96201 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES (@NPC,@PATH,0,0,0,0,0, '37467 37509');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3956.3213,2237.7644,101.96201,NULL,0,0,0,100,0),
(@PATH,2,-3959.4504,2211.259,101.91565,NULL,0,0,0,100,0),
(@PATH,3,-3969.9905,2205.709,101.76003,NULL,0,0,0,100,0),
(@PATH,4,-3972.0886,2195.8716,101.88503,NULL,0,0,0,100,0),
(@PATH,5,-3962.5134,2186.7585,101.96177,NULL,0,0,0,100,0),
(@PATH,6,-3955.4993,2190.8352,101.79905,NULL,0,0,0,100,0),
(@PATH,7,-3952.0386,2202.4385,101.77075,NULL,0,0,0,100,0),
(@PATH,8,-3958.7395,2211.49,101.91565,NULL,0,0,0,100,0);

-- Creature Texts
DELETE FROM `creature_text` WHERE `CreatureID` IN (21788, 21795);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(21788, 0, 0, 'We will never dissipate, mortal... Our fate is tied to Gorefiend...', 15, 0, 100, 0, 0, 0, 19444, 0, 'Shadowmoon Zealot'),
(21788, 0, 1, 'Pray that the chilling embrace of Teron Gorefiend does not reach out for you...', 15, 0, 100, 0, 0, 0, 19445, 0, 'Shadowmoon Zealot'),
(21788, 0, 2, 'It is you who have invaded our home. Gorefiend will avenge us!', 15, 0, 100, 0, 0, 0, 19446, 0, 'Shadowmoon Zealot'),
(21788, 0, 3, 'Gorefiend will have your head, interloper!', 15, 0, 100, 0, 0, 0, 19447, 0, 'Shadowmoon Zealot'),
(21788, 0, 4, 'We are bound here... eternally. It is the will of Gorefiend.', 15, 0, 100, 0, 0, 0, 19448, 0, 'Shadowmoon Zealot'),
(21795, 0, 0, 'We will never dissipate, mortal... Our fate is tied to Gorefiend...', 15, 0, 100, 0, 0, 0, 19444, 0, 'Shadowmoon Harbinger'),
(21795, 0, 1, 'Pray that the chilling embrace of Teron Gorefiend does not reach out for you...', 15, 0, 100, 0, 0, 0, 19445, 0, 'Shadowmoon Harbinger'),
(21795, 0, 2, 'It is you who have invaded our home. Gorefiend will avenge us!', 15, 0, 100, 0, 0, 0, 19446, 0, 'Shadowmoon Harbinger'),
(21795, 0, 3, 'Gorefiend will have your head, interloper!', 15, 0, 100, 0, 0, 0, 19447, 0, 'Shadowmoon Harbinger'),
(21795, 0, 4, 'We are bound here... eternally. It is the will of Gorefiend.', 15, 0, 100, 0, 0, 0, 19448, 0, 'Shadowmoon Harbinger');

-- SAI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (21788, 21795);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (21788, 21795) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(21788, 0, 0, 0, 6, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowmoon Zealot - On Death - Say Line 0'),
(21795, 0, 0, 0, 6, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowmoon Harbinger - On Death - Say Line 0');
