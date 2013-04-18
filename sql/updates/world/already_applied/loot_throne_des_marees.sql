--
-- EXEMPLE Table de loot
--

/* POUR INFO :
entry - id item - %loot - 1 - 0 - quantité mini - quantité maxi


Sentinelle naz'jar: 40577 - 49087
Chasseur gloubelin : 40935 - 49078
Aquamage gloubelin : 40943 - 49077
Envahisseur naz'jar: 39616 - 57501
Soignesprit naz'jar : 41139 - 57500
Commandant Ulthok : 40765 - 49064
Gardien sans-visage : 40936 - 49074
Torve-esprit Ghur'sha : 40788 - 49802
Factionnaire corrompu : 40925 - 49102
*/

--
-- ---------------------------------------------------------------
-- Dame Naz'jar:

SET @ENTRY := 40586;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55202, 80, 1, 0, 1, 1),
(@ENTRY, 55203, 18, 1, 0, 1, 1),
(@ENTRY, 55195, 19, 1, 0, 1, 1),
(@ENTRY, 55201, 12, 1, 0, 1, 1),
(@ENTRY, 55198, 12, 1, 0, 1, 1),
(@ENTRY, 71636, 3, 1, 0, 1, 1);


SET @ENTRY := 49080; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56269, 80, 1, 0, 1, 1),
(@ENTRY, 56267, 19, 1, 0, 1, 1),
(@ENTRY, 56268, 19, 1, 0, 1, 1),
(@ENTRY, 56266, 19, 1, 0, 1, 1),
(@ENTRY, 56270, 19, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Sentinelle naz'jar: 

SET @ENTRY := 40577;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 80, 1, 0, 1, 1),
(@ENTRY, 17058, 28, 1, 0, 1, 1),
(@ENTRY, 53010, 24, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

SET @ENTRY := 49087;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 80, 1, 0, 1, 1),
(@ENTRY, 17058, 28, 1, 0, 1, 1),
(@ENTRY, 53010, 24, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
-- Chasseur gloubelin: 

SET @ENTRY := 40935;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 80, 1, 0, 1, 1),
(@ENTRY, 17058, 27, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 7, 1, 0, 1, 2);

SET @ENTRY := 49078;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 80, 1, 0, 1, 1),
(@ENTRY, 17058, 27, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 7, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
--  Aquamage gloubelin : 

SET @ENTRY := 40943;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 27, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 7, 1, 0, 1, 2);

SET @ENTRY := 49077;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 27, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 7, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
--  Envahisseur naz'jar: 

SET @ENTRY := 39616;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 28, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 24, 1, 0, 1, 10),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

SET @ENTRY := 57501;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 28, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 24, 1, 0, 1, 10),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
--  Soignesprit naz'jar :

SET @ENTRY := 41139;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 28, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

SET @ENTRY := 57500;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17057, 28, 1, 0, 1, 1),
(@ENTRY, 17058, 80, 1, 0, 1, 1),
(@ENTRY, 53010, 22, 1, 0, 1, 6),
(@ENTRY, 52340, 17, 1, 0, 1, 1),
(@ENTRY, 68198, 8, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
--  Commandant Ulthok :

SET @ENTRY := 40765;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55228, 80, 1, 0, 1, 1),
(@ENTRY, 55206, 19, 1, 0, 1, 1),
(@ENTRY, 55204, 19, 1, 0, 1, 1),
(@ENTRY, 55207, 12, 1, 0, 1, 1),
(@ENTRY, 55205, 13, 1, 0, 1, 1);

SET @ENTRY := 49064;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56275, 19, 1, 0, 1, 1),
(@ENTRY, 67271, 19, 1, 0, 1, 1),
(@ENTRY, 56274, 19, 1, 0, 1, 1),
(@ENTRY, 56273, 80, 1, 0, 1, 1),
(@ENTRY, 56272, 19, 1, 0, 1, 1),
(@ENTRY, 71715, 0.4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Gardien sans-visage :

SET @ENTRY := 40936;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52326, 50, 1, 0, 2, 4),
(@ENTRY, 55260, 2, 1, 0, 1, 1);

SET @ENTRY := 49074;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55260, 50, 1, 0, 1, 1),
(@ENTRY, 55262, 2, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Torve-esprit Ghur'sha :

SET @ENTRY := 40788;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55236, 75, 1, 0, 1, 1),
(@ENTRY, 55229, 20, 1, 0, 1, 1),
(@ENTRY, 55237, 20, 1, 0, 1, 1),
(@ENTRY, 55235, 13, 1, 0, 1, 1);

SET @ENTRY := 49082;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56278, 20, 1, 0, 1, 1),
(@ENTRY, 56276, 75, 1, 0, 1, 1),
(@ENTRY, 56277, 19, 1, 0, 1, 1),
(@ENTRY, 56280, 19, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Factionnaire corrompu :

SET @ENTRY := 40925;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17058, 75, 1, 0, 1, 1),
(@ENTRY, 17057, 20, 1, 0, 1, 1),
(@ENTRY, 52340, 12, 1, 0, 1, 1),
(@ENTRY, 52326, 7, 1, 0, 2, 6);

SET @ENTRY := 49102;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 17058, 75, 1, 0, 1, 1),
(@ENTRY, 17057, 24, 1, 0, 1, 1),
(@ENTRY, 52340, 15, 1, 0, 1, 1),
(@ENTRY, 52326, 13, 1, 0, 2, 6),
(@ENTRY, 52506, 6, 1, 0, 1, 1);

-- Coffre

SET @ENTRY := 205216;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `gameobject_loot_template` VALUES 
(@ENTRY, 55252, 90, 1, 0, 1, 1),
(@ENTRY, 55258, 22, 1, 0, 1, 1),
(@ENTRY, 55256, 18, 1, 0, 1, 1),
(@ENTRY, 55250, 18, 1, 0, 1, 1),
(@ENTRY, 55251, 19, 1, 0, 1, 1),
(@ENTRY, 55255, 16, 1, 0, 1, 1),
(@ENTRY, 55259, 18, 1, 0, 1, 1),
(@ENTRY, 55253, 13, 1, 0, 1, 1),
(@ENTRY, 55254, 11, 1, 0, 1, 1),
(@ENTRY, 55249, 9, 1, 0, 1, 1);

SET @ENTRY := 207973;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `gameobject_loot_template` VALUES 
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56284, 17, 1, 0, 1, 1),
(@ENTRY, 56288, 17, 1, 0, 1, 1),
(@ENTRY, 56290, 17, 1, 0, 1, 1),
(@ENTRY, 56285, 17, 1, 0, 1, 1),
(@ENTRY, 56282, 16, 1, 0, 1, 1),
(@ENTRY, 56281, 16, 1, 0, 1, 1),
(@ENTRY, 56291, 15, 1, 0, 1, 1),
(@ENTRY, 56283, 17, 1, 0, 1, 1),
(@ENTRY, 56289, 90, 1, 0, 1, 1),
(@ENTRY, 56286, 15, 1, 0, 1, 1);

-- Gain token
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES
(49082, 0, 0, 0, 0, 0, 0, 0, 0, 1, 395, 0, 0, 70, 0, 0),
(57547, 0, 0, 0, 0, 0, 0, 0, 0, 1, 395, 0, 0, 70, 0, 0),
(49080, 0, 0, 0, 0, 0, 0, 0, 0, 1, 395, 0, 0, 70, 0, 0),
(49064, 0, 0, 0, 0, 0, 0, 0, 0, 1, 395, 0, 0, 70, 0, 0);

