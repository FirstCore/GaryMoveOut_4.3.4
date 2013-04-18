--
-- EXEMPLE Table de loot
--

/* POUR INFO :
entry - id item - %loot - 1 - 0 - quantité mini - quantité maxi

boss Général Husam : 44577 - 48932
boss  Grand prophète Barim : 43612 - 48951
boss Claque-mâchoire :  43614 - 49043
boss Siamat <Seigneur du vent du Sud :44819 - 51088
Augh: 49045 
Invocateur noir de Neferset : 44982 - 49328
Porte-peste de Neferset : 44976 - 49324
Théurge de Neferset: 44980 - 49326
Tortionnaire de Neferset : 44977 - 49325
Maître de hache lié par le serment : 44922 - 49319
Capitaine lié par le serment : 45122 - 49334
Myrmidon lié par le serment : 44924 - 49321
Guide lié par le serment : 44932 - 49323
Gardien de scorpides lié par le serment : 45062 - 49330
Ecorcheur lié par le serment : 44981 - 49327
Errant lié par le serment : 44926 - 49322
Brute pygmée : 44896 - 49317
Cracheur de feu pygmée : 44898 - 49320
Eclaireur pygmée : 44897 - 49318
*/


--
-- ---------------------------------------------------------------
-- Général Husam

SET @ENTRY := 44577;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55860, 80, 1, 0, 1, 1),
(@ENTRY, 55859, 22, 1, 0, 1, 1),
(@ENTRY, 55858, 21, 1, 0, 1, 1),
(@ENTRY, 55856, 16, 1, 0, 1, 1),
(@ENTRY, 55857, 10, 1, 0, 1, 1),
(@ENTRY, 71638, 1.7, 1, 0, 1, 1);

SET @ENTRY := 48932; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56380, 80, 1, 0, 1, 1),
(@ENTRY, 56379, 19, 1, 0, 1, 1),
(@ENTRY, 56383, 19, 1, 0, 1, 1),
(@ENTRY, 56381, 19, 1, 0, 1, 1),
(@ENTRY, 56382, 19, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Grand prophète Barim

SET @ENTRY := 43612;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55864, 80, 1, 0, 1, 1),
(@ENTRY, 55863, 19, 1, 0, 1, 1),
(@ENTRY, 55861, 19, 1, 0, 1, 1),
(@ENTRY, 55865, 18, 1, 0, 1, 1),
(@ENTRY, 55862, 13, 1, 0, 1, 1);

SET @ENTRY := 48951; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56385, 80, 1, 0, 1, 1),
(@ENTRY, 56384, 20, 1, 0, 1, 1),
(@ENTRY, 56388, 19, 1, 0, 1, 1),
(@ENTRY, 56386, 19, 1, 0, 1, 1),
(@ENTRY, 56387, 19, 1, 0, 1, 1),
(@ENTRY, 71715, 0.5, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- boss Claque-mâchoire :

SET @ENTRY := 43614;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55868, 80, 1, 0, 1, 1),
(@ENTRY, 55869, 19, 1, 0, 1, 1),
(@ENTRY, 55870, 19, 1, 0, 1, 1),
(@ENTRY, 55866, 18, 1, 0, 1, 1),
(@ENTRY, 55867, 13, 1, 0, 1, 1),
(@ENTRY, 71636, 1.7, 1, 0, 1, 1);

SET @ENTRY := 49043; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56391, 80, 1, 0, 1, 1),
(@ENTRY, 56392, 20, 1, 0, 1, 1),
(@ENTRY, 56393, 19, 1, 0, 1, 1),
(@ENTRY, 56390, 19, 1, 0, 1, 1),
(@ENTRY, 56389, 19, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- boss Siamat Seigneur du vent du Sud :

SET @ENTRY := 44819;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55879, 80, 1, 0, 1, 1),
(@ENTRY, 55874, 19, 1, 0, 1, 1),
(@ENTRY, 55880, 19, 1, 0, 1, 1),
(@ENTRY, 55876, 18, 1, 0, 1, 1),
(@ENTRY, 55872, 13, 1, 0, 1, 1),
(@ENTRY, 55875, 1.7, 1, 0, 1, 1),
(@ENTRY, 55873, 80, 1, 0, 1, 1),
(@ENTRY, 55871, 19, 1, 0, 1, 1),
(@ENTRY, 55878, 19, 1, 0, 1, 1),
(@ENTRY, 55877, 18, 1, 0, 1, 1);

SET @ENTRY := 51088; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56398, 90, 1, 0, 1, 1),
(@ENTRY, 56397, 19, 1, 0, 1, 1),
(@ENTRY, 56402, 19, 1, 0, 1, 1),
(@ENTRY, 56395, 19, 1, 0, 1, 1),
(@ENTRY, 56401, 19, 1, 0, 1, 1),
(@ENTRY, 56396, 19, 1, 0, 1, 1),
(@ENTRY, 56400, 19, 1, 0, 1, 1),
(@ENTRY, 56403, 18, 1, 0, 1, 1),
(@ENTRY, 56394, 18, 1, 0, 1, 1),
(@ENTRY, 56399, 18, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Invocateur noir de Neferset 

SET @ENTRY := 44982;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49328; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Porte-peste de Neferset : 

SET @ENTRY := 44976;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49324; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Théurge de Neferset: 

SET @ENTRY := 44980;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49326; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Théurge de Neferset: 

SET @ENTRY := 44980;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49326; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Tortionnaire de Neferset :

SET @ENTRY := 44977;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY := 49325; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Maître de hache lié par le serment : 

SET @ENTRY := 44922;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49319; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Capitaine lié par le serment : 

SET @ENTRY := 45122;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49334; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Myrmidon lié par le serment : 

SET @ENTRY := 44924;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49321; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Guide lié par le serment : 

SET @ENTRY := 44932;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49323; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Gardien de scorpides lié par le serment 

SET @ENTRY := 45062;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58268, 5, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY := 49330; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Ecorcheur lié par le serment: 

SET @ENTRY := 44981;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49327; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Errant lié par le serment : 

SET @ENTRY := 44926;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY := 49322; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Brute pygmée : 

SET @ENTRY := 44896;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 11),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49317; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1,11),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Cracheur de feu pygmée : 

SET @ENTRY := 44898;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49320; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1,6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Eclaireur pygmée : 

SET @ENTRY := 44897;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY := 49318 ; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1,6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Augh:

SET @ENTRY := 49045;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55869, 80, 2, 0, 1, 1),
(@ENTRY, 55867, 19, 2, 0, 1, 1),
(@ENTRY, 55868, 19, 2, 0, 1, 1),
(@ENTRY, 55870, 18, 2, 0, 1, 1),
(@ENTRY, 55866, 13, 2, 0, 1, 1),
(@ENTRY, 56391, 80, 4, 0, 1, 1),
(@ENTRY, 56392, 19, 4, 0, 1, 1),
(@ENTRY, 56393, 19, 4, 0, 1, 1),
(@ENTRY, 56390, 19, 4, 0, 1, 1),
(@ENTRY, 56389, 19, 4, 0, 1, 1);