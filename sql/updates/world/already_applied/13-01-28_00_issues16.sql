--
-- Close ISSUES #16
--

-- 36163
DELETE FROM `creature` WHERE `id` = 36163;
INSERT INTO `creature` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@,36163,1,-908.928,977.608,89.355,6.01432); 

-- 36353
DELETE FROM `creature` WHERE `id` = 36353;
INSERT INTO `creature` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@,36353,1,-2001.61,2888.34,53.6452,2.85283);

-- 14637
DELETE FROM `creature` WHERE `id` = 14637;
INSERT INTO `creature` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@,14637,1,-4442.59,2057.99,46.6146,1.93731); 

-- 38704
DELETE FROM `creature` WHERE `id` = 38704;
INSERT INTO `creature` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@,38704,1,-7942.57,-5288.84,0.911718,1.7765); 