/*##############
# GILNEAS-CITY #
##############*/

--
-- Clean up
--

DELETE FROM `creature` WHERE `map`=638;
DELETE FROM `gameobject` WHERE `map`=638;

--
-- Creature
--

-- NPC Prince Liam Greymane 34850(Phase 1)
DELETE FROM `creature` WHERE `id`=34850;
INSERT INTO `creature` VALUES (@, 34850, 638, 1, 1, 0, 34913, -1447.71, 1409.86, 35.5561, 0.0125672, 300, 0, 0, 98, 115, 0, 0, 0, 0);

-- NPC Prince Liam Greymane 34913 (Phase 2+4)
DELETE FROM `creature` WHERE `id`=34913;
INSERT INTO `creature` VALUES (@, 34913, 638, 1, 6, 0, 663, -1447.71, 1409.8, 35.5561, 0.113226, 300, 0, 0, 42, 0, 0, 0, 134217728, 0);

-- 1x 34863 Lietenant Walden 
DELETE FROM `creature` WHERE `id` = 34863;
INSERT INTO `creature` VALUES (@, 34863, 638, 1, 3, 0, 34916, -1405.486, 1447.415, 35.63926, 0, 300, 0, 0, 69, 79, 0, 0, 4, 32);

-- 8x 39095 Slain Guard (Phase 1)
DELETE FROM `creature` WHERE `id` = 39095;
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1669.826, 1435.016, 52.37046, 0.4537856, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1686.365, 1381.307, 52.37962, 0, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1735.67, 1437.476, 52.37084, 1.937315, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1715.153, 1435.698, 21.75196, 0, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1738.149, 1408.92, 21.75196, 0.1745329, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1701.415, 1378.955, 23.04241, 0, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1404.509, 1435.073, 35.63926, 3.804818, 300, 0, 0, 69, 79, 0, 0, 4, 32);
INSERT INTO `creature` VALUES (@, 39095, 638, 1, 3, 0, 34916, -1396.684, 1445.738, 36.04398, 0, 300, 0, 0, 69, 79, 0, 0, 4, 32);

-- 13x 34864 Gilneas City Guard (Phase 1)
DELETE FROM `creature` WHERE `id` = 34864;
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.95, 1414.047, 35.63924, 3.228859, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.941, 1418, 35.63924, 3.263766, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.144, 1418.014, 35.63924, 3.263766, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.104, 1413.96, 35.63924, 3.228859, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.915, 1410.274, 35.63924, 3.193953, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.116, 1410.38, 35.63924, 3.193953, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.002, 1397.965, 35.63926, 3.124139, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.313, 1402.193, 35.63924, 3.141593, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1441.21, 1405.986, 35.63924, 3.159046, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.939, 1398.372, 35.63924, 3.124139, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.622, 1402.186, 35.63924, 3.141593, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34864, 638, 1, 7, 0, 34916, -1444.934, 1405.981, 35.63924, 3.159046, 300, 0, 0, 69, 79, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (3486400, 34864, 638, 1, 7, 0, 34916, -1430.47, 1345.55, 35.57663, 1.780236, 300, 0, 0, 69, 79, 0, 0, 0, 0); -- guid must be static, because of creature_addon

-- 34916 Gilneas City Guard in phase 2+4(=6)
DELETE FROM `creature` WHERE `id` = 34916 AND `map` = 638;
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1440.47, 1420.69, 35.5564, 3.14412, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1436.13, 1394.69, 35.5564, 4.33383, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1461.53, 1430.1, 35.5563, 3.13584, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1535.63, 1436.08, 35.7435, 6.24994, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1557.11, 1386.33, 35.6834, 1.57735, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1548.53, 1421.76, 35.5562, 4.63955, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1499.42, 1380.68, 35.5561, 1.62365, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1506.98, 1401.15, 35.5561, 2.34198, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1526.96, 1388.05, 35.5562, 0.231602, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1511.85, 1398.82, 35.5561, 0.049396, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1541.35, 1404.07, 35.5562, 2.3148, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1555.94, 1407.04, 35.5562, 0.0721774, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1417.16, 1366.91, 35.5568, 1.9821, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1456.52, 1391.31, 35.5564, 3.13433, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1447.38, 1361.1, 35.5568, 1.75433, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1403.71, 1379.57, 35.5568, 2.26117, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1487.81, 1404.46, 35.5561, 4.29589, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1528.73, 1329.09, 35.5562, 1.96026, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1552.29, 1338.98, 35.5562, 1.34058, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1495.28, 1349.98, 35.5572, 3.23889, 300, 5, 0, 84000, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34916, 638, 1, 6, 0, 34916, -1512.39, 1342.46, 35.5562, 0.664352, 300, 5, 0, 84000, 0, 1, 0, 0, 0);

-- 34884 Rampaging Worgen in phases 2+4(=6)
DELETE FROM `creature` WHERE `id` = 34884;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(34884, 638, 1, 6, 202, 0, -1374.32, 1385.15, 37.0836, 3.86013, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1399.1, 1351.39, 70.9088, 3.36607, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1484.28, 1406.79, 35.6809, -2.32858, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1519.8, 1346.54, 35.6809, 2.50809, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1497.31, 1439.81, 36.0554, 0.820305, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1532.13, 1435.19, 35.6723, 3.00178, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1477.98, 1324.79, 67.8379, 1.52588, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1470.54, 1391.08, 35.5564, 4.7596, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1445.65, 1363.68, 35.6657, -2.01518, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1445.6, 1370.26, 35.6634, 1.17975, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1504.98, 1398.19, 35.6809, 6.22779, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1421.83, 1399.13, 71.7027, 4.73419, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1522.03, 1454.04, 71.0927, 4.86758, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1485.32, 1346.59, 35.6793, -2.78043, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1520.88, 1382.73, 36.0852, 4.46804, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1539.39, 1370.75, 63.3363, 3.16801, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1541.46, 1403.14, 35.6753, 5.77975, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1560.04, 1433.98, 69.0546, 5.9261, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1470.78, 1441.06, 36.3436, 2.60054, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1380.07, 1426.8, 70.6653, 3.17656, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1496.1, 1450.55, 71.8243, 0.069467, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1573.48, 1333.04, 58.7942, 5.57002, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1572.33, 1441.46, 71.8957, 4.85807, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1555.83, 1361.91, 35.6809, 1.56647, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1488.54, 1407.35, 35.6809, -1.07635, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1470.93, 1383.09, 36.0872, 4.11898, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1387.16, 1385.01, 64.5728, 4.65688, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1576.02, 1377.85, 71.7874, 6.25901, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1528.9, 1381.03, 58.5657, 0.113438, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1445.11, 1450.8, 71.4111, 3.14113, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1549.75, 1410.52, 68.5268, 0.049166, 600, 0, 0, 42, 0, 0, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1582.48, 1344.29, 71.5471, 4.69199, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1521.51, 1450.69, 71.2358, 4.86758, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1527.77, 1394.29, 35.6809, 0.255637, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1510.16, 1424, 35.6718, 5.22659, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1492.34, 1344.54, 35.6809, 0.205968, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1568.91, 1437.29, 73.941, 5.9261, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1490.01, 1370.42, 71.9863, 3.16292, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1498.92, 1359.38, 35.6809, 2.99057, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1571.53, 1409.3, 71.5496, 0.061007, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1442.36, 1450.8, 71.415, 3.14113, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1582.54, 1341.6, 71.7412, 4.69199, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1533.15, 1334.07, 35.6442, 0.68279, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 729, 0, -1425.56, 1358.09, 65.8807, 3.6438, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 202, 0, -1420.28, 1438.85, 71.3799, 4.71059, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 6, 203, 0, -1556.3, 1326.29, 35.6181, -2.63849, 600, 5, 0, 42, 0, 1, 0, 0, 0),
(34884, 638, 1, 1, 202, 0, -1478.3, 1330.06, 70.8062, 1.83983, 600, 0, 0, 55, 0, 0, 0, 0, 0),
(34884, 638, 1, 1, 202, 0, -1530.42, 1369.94, 71.6613, 2.48661, 600, 0, 0, 55, 0, 0, 0, 0, 0);

-- 34936 Gwen Armstead
DELETE FROM `creature` WHERE `id` = 34936;
INSERT INTO `creature` VALUES (@, 34936, 638, 1, 2, 0, 34936, -1465.22, 1403.52, 35.6392, 4.59022, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- 8x 34851 Panicked Citizen (Phase 1) running, movement type 2
DELETE FROM `creature` WHERE `id` = 34851;
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1432.875, 1431.646, 35.63927, 3.560472, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1517.184, 1358.682, 35.67543, 5.585053, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1476.811, 1439.623, 35.63926, 5.585053, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1475.917, 1355.622, 35.63927, 5.585053, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1398.113, 1431.059, 35.63926, 3.176499, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1545.533, 1436.92, 35.8738, 5.585053, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1566.021, 1390.835, 36.08628, 0.08726646, 0, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1557.66, 1333.977, 35.63924, 1.43117, 0, 0, 0, 42, 0, 2, 0, 0, 0);
-- 8x standing at square
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1559.502, 1384.313, 36.2494, 0.5759587, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1511.776, 1382.741, 35.95466, 1.099557, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1470.285, 1384.361, 36.08721, 1.099557, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1510.833, 1437.731, 35.94954, 5.532694, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1521.514, 1403.049, 35.63925, 4.520403, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1559, 1419.451, 35.79858, 5.532694, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1458.681, 1418.543, 35.63924, 1.029744, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 34851, 638, 1, 7, 0, 0, -1453.01, 1437.085, 35.94489, 5.096361, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- 10x 44086 Panicked Citizen (Phase 1) infront of gates, not moving, emoting, speaking
DELETE FROM `creature` WHERE `id` = 44086;
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1431.38, 1356.77, 35.63923, 4.834562, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1432.83, 1354.98, 35.63923, 4.956735, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1432.97, 1352.17, 35.63923, 5.061455, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1435.73, 1355.46, 35.63923, 5.148721, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1435.15, 1352.44, 35.63923, 5.218534, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1428.64, 1356.64, 35.63923, 4.625123, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1430.37, 1353.85, 35.63923, 4.764749, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1427.55, 1354.11, 35.63923, 4.520403, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1437.52, 1350.65, 35.63923, 5.410521, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1438.47, 1353.14, 35.63923, 5.427974, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- 11x infront of gate in military district gate + 1 standing near slain citizen
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1673.36, 1348.91, 15.32633, 5.096361, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1769.48, 1339.98, 20.03683, 3.769911, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1770.6, 1337.48, 20.03943, 1.43117, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1773.59, 1332.55, 19.96173, 2.146755, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1771.85, 1339.88, 20.04223, 6.143559, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1774.83, 1333.91, 19.96123, 5.497787, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1774.7, 1337.94, 20.04733, 3.996804, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1777.4, 1344.69, 19.93393, 5.061455, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1776.7, 1343.02, 19.86513, 2.146755, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1778.8, 1339.37, 19.88103, 3.839724, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1776.27, 1339.79, 19.92853, 3.944444, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (@, 44086, 638, 1, 7, 0, 0, -1777.36, 1337.95, 19.95563, 3.839724, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- 1x running along water channel, movement type 2, static_guid
INSERT INTO `creature` VALUES (4408600, 44086, 638, 1, 7, 0, 0, -1633.72, 1315.79, 19.7603, 1.55008, 300, 0, 0, 42, 0, 2, 0, 0, 0);

-- 1x 44105 Slain Citizen
DELETE FROM `creature` WHERE `id` = 44105;
INSERT INTO `creature` VALUES (@, 44105, 638, 1, 1, 0, 0, -1674.79, 1346.61, 15.33933, 5.096361, 300, 0, 0, 42, 0, 0, 0, 4, 32);

-- 3x 4075 Rat (Phase 1), static guid needed because od waypoint_data
DELETE FROM `creature` WHERE `id` = 4075 and `map` = 638;
INSERT INTO `creature` VALUES (407500, 4075, 638, 1, 1, 0, 4075, -1402.63, 1419.77, 35.5561, 3.22454, 300, 0, 0, 21, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (407501, 4075, 638, 1, 1, 0, 4075, -1527.87, 1362.03, 36.005, 4.17488, 300, 0, 0, 21, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (407502, 4075, 638, 1, 1, 0, 4075, -1430.29, 1439.38, 35.9533, 3.48294, 300, 0, 0, 21, 0, 2, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=35660;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@, 35660, 638, 1, 6, 729, 0, -1558.64, 1422.62, 35.6692, 6.20844, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1526.54, 1386.81, 36.0067, 0.0195026, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 203, 0, -1573.93, 1381.87, 37.1607, 0.874185, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1509.05, 1371.35, 35.4168, 6.26101, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 203, 0, -1531.89, 1318.65, 36.7472, 4.37312, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1528.7, 1324.07, 35.9046, 0.852602, 600, 5, 0, 18, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1506.5, 1368.56, 35.6809, 4.41096, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1520.18, 1334.34, 35.6378, 3.36747, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1536.98, 1403.64, 35.5562, 6.14247, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 203, 0, -1566.31, 1413.51, 36.806, 4.34645, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1459.78, 1447.69, 36.8053, 1.08076, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1488.01, 1420.61, 35.5566, 5.69636, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1457.51, 1409.13, 35.5562, 1.39631, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1421.63, 1368.42, 35.5563, 1.89818, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1458.68, 1356.65, 35.5563, 1.66256, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 729, 0, -1473.96, 1384.02, 36.0046, 0.00458002, 600, 0, 0, 55, 0, 2, 0, 0, 0),
(@, 35660, 638, 1, 6, 203, 0, -1549.82, 1336.71, 35.6637, 3.73383, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1536.49, 1444.29, 36.6445, -1.7817, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 203, 0, -1579.76, 1339.98, 36.696, 3.45639, 600, 5, 0, 55, 0, 1, 0, 0, 0),
(@, 35660, 638, 1, 6, 202, 0, -1489.31, 1330.34, 36.6501, 4.40327, 600, 5, 0, 55, 0, 1, 0, 0, 0);

--
-- Creature_template
--

-- Bloodfang Worgen 35118
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35118, 0, 0, 0, 0, 0, 36772, 36771, 36770, 0, 'Bloodfang Worgen', '', '', 0, 2, 3, 0, 16, 16, 3, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 35118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- NPC Prince Liam Greymane 34850(Phase 1)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34850, 0, 0, 0, 0, 0, 29463, 0, 0, 0, 'Prince Liam Greymane', '', '', 0, 5, 5, 0, 1, 1, 3, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34913, 0, 0, 'npc_prince_liam_greymane_phase1', 1);

-- NPC Prince Liam Greymane 34913 (Phase 2+4)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34913, 0, 0, 0, 0, 0, 29463, 0, 0, 0, 'Prince Liam Greymane', '', '', 0, 5, 5, 0, 1, 1, 3, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34913, 0, 0, 'npc_prince_liam_greymane_phase2', 1);

-- 34863 Lietenant Walden
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34863, 0, 0, 0, 0, 0, 29476, 0, 0, 0, 'Lieutenant Walden', '', '', 0, 3, 3, 0, 1, 1, 3, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 7, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_lieutenant_walden', 1);

-- 39095 Slain Guard
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (39095, 0, 0, 0, 0, 0, 29466, 29467, 0, 0, 'Slain Guard', '', '', 0, 3, 3, 0, 1, 1, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- 34864 Gilneas City Guard in phase 1
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34864, 0, 0, 0, 0, 0, 29466, 29467, 0, 0, 'Gilneas City Guard', '', '', 0, 3, 3, 0, 1, 1, 0, 1, 1.14286, 1, 0, 6, 8, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34916, 0, 0, 'npc_gilneas_city_guard_phase1', 1);

-- 34916 Gilneas City Guard in phase (1+)2+4
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34916, 0, 0, 0, 0, 0, 29466, 29467, 0, 0, 'Gilneas City Guard', '', '', 0, 1, 1, 0, 1, 1, 0, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34916, 0, 0, 'npc_gilneas_city_guard_phase2', 1);

-- 34884 Rampaging Worgen in phases 2+4
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34884, 0, 0, 0, 35660, 0, 36770, 36771, 0, 0, 'Rampaging Worgen', '', '', 0, 1, 2, 0, 32, 32, 0, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 34884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, '', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_rampaging_worgen', 1);

-- 35660 Rampaging Worgen spawned by script in phases 2+4
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35660, 0, 0, 0, 34884, 0, 36770, 36771, 0, 0, 'Rampaging Worgen', '', '', 0, 2, 2, 0, 16, 16, 0, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 35660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, '', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_rampaging_worgen2', 1);

-- 34936 Gwen Armstead
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34936, 0, 0, 0, 0, 0, 29290, 0, 0, 0, 'Gwen Armstead', '', '', 0, 1, 1, 0, 1, 1, 3, 1, 1.14286, 1, 0, 4, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 34936, 0, 0, '', 1);

-- 34981, 35836 Frightened Citizen
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34981, 0, 0, 0, 0, 0, 30214, 30215, 30217, 30218, 'Frightened Citizen', '', '', 0, 1, 1, 0, 1, 1, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_frightened_citizen', 1);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35836, 0, 0, 0, 0, 0, 30217, 30218, 30215, 30216, 'Frightened Citizen', '', '', 0, 1, 1, 0, 1, 1, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_frightened_citizen', 1);

-- 34851, 44086 Panicked Citizen
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34851, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30216, 'Panicked Citizen', '', '', 0, 1, 1, 0, 1, 1, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44086, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30216, 'Panicked Citizen', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 13, 17, 0, 42, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 9, 13, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- 44105 Slain Citizen
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (44105, 0, 0, 0, 0, 0, 30217, 30218, 30214, 30216, 'Slain Citizen', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4, 32, 0, 0, 0, 0, 0, 1, 1, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- 4075 Rat
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (4075, 0, 0, 0, 0, 0, 1141, 1418, 2176, 0, 'Rat', '', NULL, 0, 1, 1, 0, 31, 31, 0, 1, 0.8, 1, 0, 2, 2, 0, 24, 3.5, 2000, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 4075, 0, 2, '', 12340);

UPDATE `creature_template` SET `ScriptName` = 'npc_lord_darius_crowley' WHERE `entry` = '35077';
UPDATE `creature_template` SET `ScriptName` = 'npc_king_genn_greymane' WHERE `entry` = '35550';
UPDATE `creature_template` SET `ScriptName` = 'npc_lord_darius_crowley_c2' WHERE `entry` = '35552';
UPDATE `creature_template` SET `ScriptName` = 'npc_lord_darius_crowley_c3' WHERE `entry` = '35566';
UPDATE `creature_template` SET `ScriptName` = 'npc_king_genn_greymane_c2' WHERE `entry` = '36332';
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry`='34913';

--
-- NPC Text
--

-- Prince Liam Greymane Phase 1
SET @ENTRY := 34850;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,0,1,20000,20000,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Text-1");

DELETE FROM `creature_text` WHERE `entry` = @ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY, 0, 0, 'Sécurisez le périmètre. Que les portes soient surveillées par deux gardes en permanence. Personne n''entre, personne ne sort.', 14, 0, 100, 1, 0, 19615, 'Text 1'),
(@ENTRY, 0, 1, 'Nous avons protégé Gilnéas du Fléau. Nous avons protégé Gilnéas lors de la rébellion à la Porte. Nous protégerons Gilnéas, quelle que soit cette nouvelle menace.', 14, 0, 100, 25, 0, 19616, 'Text 2'),
(@ENTRY, 0, 2, 'Gardes, soyez prêts ! Nous ne savons pas combien ils sont, mais l''Éminence est submergée et nous sommes isolés des villes côtières. Attendez-vous à être en infériorité numérique.', 14, 0, 100, 1, 0, 19614, 'Text 3');

-- Gilneas City Guard Phase 1
SET @ENTRY := 34864;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,30000,120000,30000,120000,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"text");

DELETE FROM `creature_text` WHERE `entry` = @ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY, 0, 0, 'Personne n''est autorisé à partir. Ordre du Prince Liam.', 12, 0, 0, 0, 0, 0, 'text-1'),
(@ENTRY, 0, 1, 'Restez calme. Nous avons tout sous contrôle.', 12, 0, 0, 0, 0, 0, 'text-2'),
(@ENTRY, 0, 2, 'Il n''est pas prudent de partir, il y a quelque chose qui se tapit dans les bois.', 12, 0, 0, 0, 0, 0, 'text-3');


-- Panicked Citizen phase 1

SET @ENTRY := 34851;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,9,0,100,1,0,5,0,0,31,1,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Set Random Phase on Range"),
(@ENTRY,@SOURCETYPE,1,2,9,1,100,1,0,5,0,0,17,431,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Play Emote Fear on Range"),
(@ENTRY,@SOURCETYPE,2,3,61,1,100,1,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Stop Attack on Range"),
(@ENTRY,@SOURCETYPE,3,4,61,1,100,1,0,0,0,0,4,14993,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Play Sound Male on Range"),
(@ENTRY,@SOURCETYPE,4,5,61,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Stop Move on Range"),
(@ENTRY,@SOURCETYPE,5,0,61,1,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Cast Say on Range"),
(@ENTRY,@SOURCETYPE,6,0,0,1,100,0,20000,20000,40000,40000,4,14993,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Play Sound Male Scream on Repeat"),
(@ENTRY,@SOURCETYPE,7,8,7,1,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Emote on Evade"),
(@ENTRY,@SOURCETYPE,8,0,61,1,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Phase on Evade"),
(@ENTRY,@SOURCETYPE,9,0,6,1,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Emote on Death"),
(@ENTRY,@SOURCETYPE,10,11,9,2,100,1,0,5,0,0,11,52716,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Cast Cornered and Enraged! on Range"),
(@ENTRY,@SOURCETYPE,11,12,61,2,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say Text on Range"),
(@ENTRY,@SOURCETYPE,12,13,61,2,100,1,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Start Attack on Range"),
(@ENTRY,@SOURCETYPE,13,0,61,2,100,1,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Start Move on Range"),
(@ENTRY,@SOURCETYPE,14,0,7,2,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Phase on Evade"),
(@ENTRY,@SOURCETYPE,15,16,9,4,100,1,0,0,0,0,11,52716,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Cast Terrified on Range"),
(@ENTRY,@SOURCETYPE,16,17,61,4,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say Text on Range"),
(@ENTRY,@SOURCETYPE,17,18,61,4,100,1,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Start Move on Range"),
(@ENTRY,@SOURCETYPE,18,0,61,4,100,1,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Stop Attack on Range"),
(@ENTRY,@SOURCETYPE,19,20,0,4,100,0,15000,15000,30000,30000,4,14993,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Play Sound Male Scream on Repeat"),
(@ENTRY,@SOURCETYPE,20,0,61,4,100,0,15000,15000,30000,30000,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Say Text on Repeat"),
(@ENTRY,@SOURCETYPE,21,22,0,4,100,1,20000,20000,0,0,21,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Stop Move on Repeat"),
(@ENTRY,@SOURCETYPE,22,0,61,4,100,1,20000,20000,0,0,17,431,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Play Emote Fear on Repeat"),
(@ENTRY,@SOURCETYPE,23,24,7,4,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Emote on Evade"),
(@ENTRY,@SOURCETYPE,24,0,61,4,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Phase on Evade"),
(@ENTRY,@SOURCETYPE,25,0,6,4,100,1,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset Emote on Death");

DELETE FROM `creature_text` WHERE `entry` = @ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY, 0, 0, 'Pourquoi ?', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 1, 'Quelqu''un peux me sauver !', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 2, 'Épargnez ma vie! Je vais quitter cet endroit pour toujours! S''il vous plaît!', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 3, 'En ce jour, vous faites de mes enfants des orphelins, l''ami !', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 4, 'Ils ... Ils ont promis que nous serions en sécurité ... ', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 5, 'Je suis trop jeune pour mourir ! ', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 6, 'Demander moi n''importe quoi et vous l''aurez ! Juste épargner ma vie! ', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 0, 7, 'AU SECOUR ! AU SECOUR ! ', 12, 0, 50, 22, 0, 0, 'combat Say'),
(@ENTRY, 1, 0, 'Je ne vais pas me faire descendre aussi simplement que ça!', 12, 0, 50, 0, 0, 0, 'combat Say'),
(@ENTRY, 1, 1, 'Meurt chien monstre! MEURT!', 12, 0, 50, 0, 0, 0, 'combat Say'),
(@ENTRY, 1, 2, 'Tu étais juste un chien!', 12, 0, 50, 0, 0, 0, 'combat Say'),
(@ENTRY, 1, 3, 'Vous pouvez prendre ma vie, mais vous ne prendrez pas ma liberté !', 12, 0, 50, 0, 0, 0, 'combat Say'),
(@ENTRY, 1, 4, 'MEURT!', 12, 0, 50, 0, 0, 0, 'combat Say'),
(@ENTRY, 1, 5, 'Venez donc, le loup !', 12, 0, 50, 0, 0, 0, 'combat Say');

-- Panicked Citizen
SET @ENTRY := 44086;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,60,0,100,0,3000,5000,3000,5000,10,431,20,431,412,397,20,1,0,0,0,0.0,0.0,0.0,0.0,""),
(@ENTRY,@SOURCETYPE,1,0,60,0,15,0,1000,20000,10000,15000,1,1,5000,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"");

DELETE FROM `creature_text` WHERE `entry` = @ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY, 1, 0, 'Ils nous ont dit Gilnéas était en sécurité ...', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 1, 'Nous devons sortir d''ici! Le hurlement devient plus fort chaque soir.', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 2, 'Qu''est-ce ... ces choses sur les toits?', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 3, 'Vous ne pouvez pas nous faire ça!', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 4, 'Mes enfants sont à Val-Tempête seul ! Je dois les rejoindre !', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 5, 'Que se passe-t-il ? J''ai cru voir quelque chose sur les toits.', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying'),
(@ENTRY, 1, 6, 'Que se passe-t-il ? J''ai cru voir quelque chose sur les toits.', 12, 0, 33, 0, 0, 0, 'Panicked Citizen Random Saying');

--
-- Gameobject
--

-- Spawned Mailbox in Gilneas City... Please correct if phaseMask is not correct
DELETE FROM `gameobject` WHERE `map` = 638 AND `id` = 202591;
INSERT INTO `gameobject` VALUES (@, 202591, 638, 1, 7, -1496.19, 1409.73, 35.5562, 4.69959, 0, 0, 0.711617, -0.702568, 300, 0, 1);

-- Phase 1 gameobjects
DELETE FROM `gameobject` WHERE `id` IN (401862,401863,402361,402362) AND `map` = 638 AND `phaseMask` = 1;
INSERT INTO `gameobject` VALUES (@, 402362, 638, 1, 1, -1486.87, 1357.83, 35.8334, 0.0785386, 0, 0, 0.0392592, 0.999229, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1493.51, 1357.36, 35.7989, 0.0117798, 0, 0, 0.00588986, 0.999983, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1488.11, 1418.26, 35.5564, 5.04618, 0, 0, 0.579817, -0.814746, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1429.18, 1375.58, 35.687, 2.13628, 0, 0, 0.876305, 0.481757, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1539.91, 1346.38, 35.7626, 2.05381, 0, 0, 0.855701, 0.51747, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401863, 638, 1, 1, -1530.18, 1352.76, 36.0583, 5.66664, 0, 0, 0.303413, -0.952859, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402361, 638, 1, 1, -1535.72, 1356.68, 35.817, 0.00391817, 0, 0, 0.00195908, 0.999998, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402362, 638, 1, 1, -1543.96, 1356.11, 35.729, 2.45436, 0, 0, 0.941543, 0.336893, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1536.2, 1350.01, 35.9364, 2.52898, 0, 0, 0.953453, 0.301541, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402362, 638, 1, 1, -1511.35, 1358.83, 35.5576, 0.0903118, 0, 0, 0.0451406, 0.998981, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402361, 638, 1, 1, -1517.9, 1358.24, 35.63, 0.592967, 0, 0, 0.292159, 0.95637, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1519.77, 1353.63, 35.9139, 2.50934, 0, 0, 0.950447, 0.310888, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1568.27, 1338.49, 35.7816, 3.53429, 0, 0, 0.980786, -0.195089, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402361, 638, 1, 1, -1453.15, 1370.15, 35.8176, 4.76344, 0, 0, 0.688829, -0.724924, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 402361, 638, 1, 1, -1449.85, 1370, 35.6124, 0.212054, 0, 0, 0.105828, 0.994384, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401863, 638, 1, 1, -1450.76, 1375.34, 35.7253, 5.14436, 0, 0, 0.539137, -0.842218, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1447.33, 1377.7, 35.5561, 4.08801, 0, 0, 0.890111, -0.455743, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401863, 638, 1, 1, -1428.45, 1443.51, 36.0091, 1.20166, 0, 0, 0.565327, 0.824867, 300, 0, 1);
INSERT INTO `gameobject` VALUES (@, 401862, 638, 1, 1, -1429.85, 1440.95, 35.9821, 1.19381, 0, 0, 0.562084, 0.82708, 300, 0, 1);

-- Supply Crate
DELETE FROM `gameobject` WHERE `id` = 195306;
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1470.16, 1382.9, 36.0044, 4.68124, 0, 0, 0.718032, -0.69601, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1493.2, 1380.59, 35.8557, 4.77078, 0, 0, 0.686166, -0.727445, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1549.53, 1305.57, 35.879, 0.288341, 0, 0, 0.143672, 0.989625, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1580.39, 1360.24, 35.9998, 4.65908, 0, 0, 0.7257, -0.688012, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1536.47, 1379.34, 36.0049, 0.00559856, 0, 0, 0.00279928, 0.999996, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1573.34, 1386.53, 36.5311, 4.58054, 0, 0, 0.752153, -0.658988, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1561.3, 1406.11, 36.1642, 3.21787, 0, 0, 0.999273, -0.0381279, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1555.25, 1437.56, 35.9326, 1.55282, 0, 0, 0.700723, 0.713433, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1533.82, 1443.16, 36.0041, 1.55282, 0, 0, 0.700723, 0.713433, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1529.38, 1415.91, 35.5483, 4.22318, 0, 0, 0.857301, -0.514815, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1500.18, 1441.23, 35.9867, 1.6078, 0, 0, 0.720067, 0.693904, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1468.17, 1443.02, 36.0026, 1.5646, 0, 0, 0.704914, 0.709292, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1441.36, 1441.24, 35.9884, 1.59209, 0, 0, 0.714595, 0.699539, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1462.29, 1412.72, 35.5559, 4.62765, 0, 0, 0.736423, -0.676521, 300, 0, 1);
INSERT INTO `gameobject` values (@, 195306, 638, 1, 6, -1521.32, 1407.05, 35.5562, 1.86462, 0, 0, 0.802999, 0.595981, 300, 0, 1);

-- Merchant Square Door
DELETE FROM `gameobject` WHERE  `id` = 195327;
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1394.08, 1403.29, 36.4232, 3.14, 0, 0, 1, 0.000795917, 0, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1549.02, 1309.71, 36.4268, 3.40029, 0, 0, 0.991646, -0.128989, 0, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1486.16, 1334.04, 36.4894, 1.85808, 0, 0, 0.801046, 0.598602, 0, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1562.9, 1409.65, 36.6444, 6.28119, 0, 0, 0.000997694, -1, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1513.93, 1371.12, 36.535, 0.002388, 0, 0, 0.001194, 0.999999, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1537.49, 1444.15, 36.572, 4.68448, 0, 0, 0.716906, -0.69717, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1463.98, 1444.47, 36.6447, 4.67034, 0, 0, 0.721816, -0.692085, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1576.71, 1335.87, 36.5351, 6.24978, 0, 0, 0.0167039, -0.99986, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1569.81, 1385.02, 36.9232, 1.54289, 0, 0, 0.69717, 0.716906, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1421.11, 1412.92, 36.7947, 1.55076, 0, 0, 0.699988, 0.714155, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1426.63, 1436.45, 36.4232, 3.15599, 0, 0, 0.999974, -0.00719772, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1529.32, 1322.13, 36.5852, 1.84564, 0, 0, 0.797308, 0.603573, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1583.43, 1358.93, 36.5342, 1.5574, 0, 0, 0.702356, 0.711826, 3600, 0, 1);
INSERT INTO `gameobject` values (@, 195327, 638, 1, 1039, -1493.61, 1371.21, 36.5382, 3.14155, 0, 0, 1, 0.0000227253, 3600, 0, 1);
 
-- Merchant Square Door
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (195327, 10, 9023, 'Merchant Square Door', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 14098, 0, 25000, 0, 0, 0, 0, 0, 0, 66639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'go_merchant_square_door', 13329);

-- Supply Crate
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (195306, 3, 336, 'Supply Crate', '', '', '', 0, 0, 1, 46896, 0, 0, 0, 0, 0, 1691, 195306, 0, 1, 0, 0, 0, 0, 14094, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

-- Mailbox (Gilneas City)
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (202591, 19, 9139, 'Mailbox', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);

-- Doodads? (un-interactable objects)
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (401862, 14, 8956, 'gilneas_bush_02', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13623);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (401863, 14, 8957, 'gilneas_bush_05', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13623);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (402361, 14, 10436, 'gilneas_bush_04', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13623);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES (402362, 14, 10437, 'gilneas_bush_03', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13623);

-- Supply Crate
REPLACE INTO `gameobject_loot_template` VALUES (195306, 46896, -100, 1, 0, 1, 1); -- quest item

--
-- Quete
--

REPLACE INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `LimitTime`, `RequiredClasses`, `RequiredRaces`, `RequiredSkillId`, `RequiredSkillPoints`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `RewardMailTemplateId`, `RewardMailDelay`, `SourceItemId`, `SourceItemCount`, `SourceSpellId`, `Flags`, `SpecialFlags`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `OfferRewardText`, `RequestItemsText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpellCast1`, `RequiredSpellCast2`, `RequiredSpellCast3`, `RequiredSpellCast4`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `EmoteOnIncomplete`, `EmoteOnComplete`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `WDBVerified`) VALUES (14078, 2, 1, 1, 0, 4755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14091, 0, 0, 8, 15, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 786432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 1168, 5, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lockdown!', 'Find Lieutenant Walden in the northwestern end of the Merchant Square.', 'What are you still doing here, citizen?  Haven\'t you heard?  The city\'s under complete lockdown.$B$BGo see Lieutenant Walden -- he\'ll give you further directions for evacuation.', '', 'Deep claw marks run through the man\'s corpse.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

