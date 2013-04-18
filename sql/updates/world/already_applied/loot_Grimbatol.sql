--
-- Table de loot Grimbatol
--

/* POUR INFO :
entry - id item - %loot - 1 - 0 - quantité mini - quantité maxi

Boss  messager du Marteau du Crépuscule  : 40319 - 48784
Boss Maître-forge Throngus : 40177 - 48702
Boss  Erudax 40484 - 48822
Boss Général Umbriss 39625 - 48337
Gardien de la nuée azur 39854 - 48661
Gardien de la nuée cramoisie : 39381 - 48654
Brise-tempête du Crépuscule : 39962 - 48597
Maître d'armes du Crépuscule : 40306 - 48610
Sculpte-terre du Crépuscule : 39890 - 48595
Massacreur du Crépuscule : 40448 - 48667
Massacreur du Crépuscule : 39956 - 48666
Chercheflamme réhaussé : 39415 - 48677
Marche-vent réhaussé : 39414 - 48676
Seigneur de guerre de la nuée azur : 39909 - 48680
Seigneur de guerre de la nuée cramoisie : 39626 - 48682
Imposteur du Crépuscule : 40167 - 48695
Brute gronn asservie : 40166 - 48693
Mande-tonnerre du Crépuscule : 40270 - 48750
Grippe-feu du Crépuscule : 39870 - 48748
Flagellant aquatique réhaussé : 40273 - 48753
Brise-roche réhaussé : 40272 - 48751
Mande-wyrm du Crépuscule : 39873 - 48754
Drake du Crépuscule : 41095 - 48755
Habitant trogg : 39450 - 48348

*/


--
-- ---------------------------------------------------------------
-- Boss messager du Marteau du Crépuscule 

SET @ENTRY :=40319;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 66927, 47, 1, 0, 1, 1),
(@ENTRY, 56123, 85, 1, 0, 1, 1),
(@ENTRY, 56126, 17, 1, 0, 1, 1),
(@ENTRY, 56127, 17, 1, 0, 1, 1),
(@ENTRY, 21525, 13, 1, 0, 1, 1),
(@ENTRY, 56125, 12, 1, 0, 1, 1),
(@ENTRY, 56124, 12, 1, 0, 1, 1),
(@ENTRY, 22206, 3, 1, 0, 1, 1);


SET @ENTRY :=48784; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56451, 88, 1, 0, 1, 1),
(@ENTRY, 56452, 18, 1, 0, 1, 1),
(@ENTRY, 56453, 17, 1, 0, 1, 1),
(@ENTRY, 56450, 17, 1, 0, 1, 1),
(@ENTRY, 56454, 17, 1, 0, 1, 1),
(@ENTRY, 21525, 16, 1, 0, 1, 1),
(@ENTRY, 66927, 14, 1, 0, 1, 1),
(@ENTRY, 22206, 5, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss Maître-forge Throngus : 

SET @ENTRY :=40177;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56120, 84, 1, 0, 1, 1),
(@ENTRY, 56118, 20, 1, 0, 1, 1),
(@ENTRY, 56121, 19, 1, 0, 1, 1),
(@ENTRY, 56122, 18, 1, 0, 1, 1),
(@ENTRY, 56119, 12, 1, 0, 1, 1),
(@ENTRY, 71638, 1.7, 1, 0, 1, 1);

SET @ENTRY :=48702; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56445, 80, 1, 0, 1, 1),
(@ENTRY, 56446, 19, 1, 0, 1, 1),
(@ENTRY, 56448, 19, 1, 0, 1, 1),
(@ENTRY, 56447, 19, 1, 0, 1, 1),
(@ENTRY, 56449, 19, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Boss  Erudax :

SET @ENTRY :=40484;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56137, 90, 1, 0, 1, 1),
(@ENTRY, 56131, 24, 1, 0, 1, 1),
(@ENTRY, 56138, 22, 1, 0, 1, 1),
(@ENTRY, 56132, 21, 1, 0, 1, 1),
(@ENTRY, 56129, 17, 1, 0, 1, 1),
(@ENTRY, 56136, 17, 1, 0, 1, 1),
(@ENTRY, 56133, 17, 1, 0, 1, 1),
(@ENTRY, 56128, 16, 1, 0, 1, 1),
(@ENTRY, 56130, 16, 1, 0, 1, 1),
(@ENTRY, 56135, 11, 1, 0, 1, 1);

SET @ENTRY :=48822; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56461, 90, 1, 0, 1, 1),
(@ENTRY, 56462, 19, 1, 0, 1, 1),
(@ENTRY, 56457, 19, 1, 0, 1, 1),
(@ENTRY, 56463, 19, 1, 0, 1, 1),
(@ENTRY, 56458, 19, 1, 0, 1, 1),
(@ENTRY, 56456, 19, 1, 0, 1, 1),
(@ENTRY, 56459, 19, 1, 0, 1, 1),
(@ENTRY, 56464, 18, 1, 0, 1, 1),
(@ENTRY, 56460, 18, 1, 0, 1, 1),
(@ENTRY, 56455, 18, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Boss Général Umbriss   :

SET @ENTRY :=39625;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56116, 80, 1, 0, 1, 1),
(@ENTRY, 56115, 24, 1, 0, 1, 1),
(@ENTRY, 56112, 18, 1, 0, 1, 1),
(@ENTRY, 56114, 12, 1, 0, 1, 1),
(@ENTRY, 56113, 12, 1, 0, 1, 1);

SET @ENTRY :=48337; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56443, 80, 1, 0, 1, 1),
(@ENTRY, 56444, 19, 1, 0, 1, 1),
(@ENTRY, 56442, 19, 1, 0, 1, 1),
(@ENTRY, 56440, 19, 1, 0, 1, 1),
(@ENTRY, 56441, 19, 1, 0, 1, 1),
(@ENTRY, 71715, 0.5, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Gardien de la nuée azur :

SET @ENTRY :=39854;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48661; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Gardien de la nuée cramoisie : 

SET @ENTRY :=39381;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 14, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48654; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 14, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Brise-tempête du Crépuscule : 

SET @ENTRY :=39962;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48597; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Maître d'armes du Crépuscule : 

SET @ENTRY :=40306;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48610; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Sculpte-terre du Crépuscule : 

SET @ENTRY :=39890;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 9, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48595; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 9, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Massacreur du Crépuscule :

SET @ENTRY :=40448;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY :=48667; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 9, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Massacreur du Crépuscule :

SET @ENTRY :=40448;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48667; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Chercheflamme réhaussé : 

SET @ENTRY :=39415;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48677; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Marche-vent réhaussé : 

SET @ENTRY :=39414;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48676; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Seigneur de guerre de la nuée azur :

SET @ENTRY :=39909;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48680; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Seigneur de guerre de la nuée cramoisie :

SET @ENTRY :=39626;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 14, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48682; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 14, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Imposteur du Crépuscule : 

SET @ENTRY :=40167;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48695; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Brute gronn asservie : 

SET @ENTRY :=40166;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY :=48693; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Mande-tonnerre du Crépuscule : 

SET @ENTRY :=40270;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=40270;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Grippe-feu du Crépuscule :

SET @ENTRY :=39870;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48748; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ----------------------------------------------------------------
-- Flagellant aquatique réhaussé :

SET @ENTRY :=40273;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 52506, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY :=48753; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1),
(@ENTRY, 52506, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Brise-roche réhaussé : 

SET @ENTRY :=40272;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1),
(@ENTRY, 52506, 4, 1, 0, 1, 1);

SET @ENTRY :=48751; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 7, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1),
(@ENTRY, 52506, 4, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Mande-wyrm du Crépuscule : 

SET @ENTRY :=39873;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 68197, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

SET @ENTRY :=48754; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58268, 6, 1, 0, 1, 1),
(@ENTRY, 52506, 4, 1, 0, 1, 2),
(@ENTRY, 58256, 3, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Drake du Crépuscule : 

SET @ENTRY :=41095;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 67495, 100, 1, 0, 1, 1);

SET @ENTRY :=48755; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 67495, 100, 1, 0, 1, 1);

--
-- ----------------------------------------------------------------
-- Habitant trogg : 

SET @ENTRY :=39450;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 9),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

SET @ENTRY :=48348; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 9),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

