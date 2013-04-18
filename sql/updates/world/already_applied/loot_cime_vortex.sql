--
-- EXEMPLE Table de loot
--

/* POUR INFO :
entry - id item - %loot - 1 - 0 - quantité mini - quantité maxi

Boss Altairus 43873 - 43874
Boss Asaad 43875 - 43876
Boss Grand vizir Ertan 43878 - 43879
Vortex sauvage 45912 - 45913
Soldat bourrasque: 45477 - 57510
Prince-nuage : 45917 -45918
Grain turbulent :45924 - 45925
Assassin empyréen :45922-45923
Jeune dragon des tempêtes : 45919 - 45920
Ministre de l'air : 45930 - 45931
 Adepte du temple: 45935 - 45936
Serviteur d'Asaad: 45926 -45927
 Exécuteur du Calife : 45928 - 45929
*/


--
-- ---------------------------------------------------------------
-- Boss Altairus 

SET @ENTRY := 43873;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 63040, 0.8, 1, 0, 1, 1),
(@ENTRY, 55835, 19, 1, 0, 1, 1),
(@ENTRY, 55841, 19, 1, 0, 1, 1),
(@ENTRY, 55840, 19, 1, 0, 1, 1),
(@ENTRY, 55839, 80, 1, 0, 1, 1),
(@ENTRY, 55838, 13, 1, 0, 1, 1);


SET @ENTRY := 43874; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 63040, 0.7, 1, 0, 1, 1),
(@ENTRY, 56362, 80, 1, 0, 1, 1),
(@ENTRY, 56364, 19, 1, 0, 1, 1),
(@ENTRY, 56361, 19, 1, 0, 1, 1),
(@ENTRY, 56363, 19, 1, 0, 1, 1),
(@ENTRY, 56365, 19, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss Asaad 

SET @ENTRY := 43875;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55850, 90, 1, 0, 1, 1),
(@ENTRY, 55846, 23, 1, 0, 1, 1),
(@ENTRY, 55851, 19, 1, 0, 1, 1),
(@ENTRY, 55847, 16, 1, 0, 1, 1),
(@ENTRY, 55844, 16, 1, 0, 1, 1),
(@ENTRY, 55845, 16, 1, 0, 1, 1),
(@ENTRY, 55842, 16, 1, 0, 1, 1),
(@ENTRY, 55848, 13, 1, 0, 1, 1),
(@ENTRY, 55849, 13, 1, 0, 1, 1),
(@ENTRY, 55853, 3, 1, 0, 1, 1),
(@ENTRY, 71635, 2, 1, 0, 1, 1);


SET @ENTRY := 43876; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56374, 19, 1, 0, 1, 1),
(@ENTRY, 56373, 90, 1, 0, 1, 1),
(@ENTRY, 56371, 19, 1, 0, 1, 1),
(@ENTRY, 56375, 18, 1, 0, 1, 1),
(@ENTRY, 56370, 17, 1, 0, 1, 1),
(@ENTRY, 56368, 17, 1, 0, 1, 1),
(@ENTRY, 56367, 17, 1, 0, 1, 1),
(@ENTRY, 56366, 17, 1, 0, 1, 1),
(@ENTRY, 56369, 17, 1, 0, 1, 1),
(@ENTRY, 56376, 9, 1, 0, 1, 1),
(@ENTRY, 52506, 0.3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss Grand vizir Ertan 43878 - 43879

SET @ENTRY := 43878;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55834, 80, 1, 0, 1, 1),
(@ENTRY, 55833, 17, 1, 0, 1, 1),
(@ENTRY, 55830, 17, 1, 0, 1, 1),
(@ENTRY, 55831, 12, 1, 0, 1, 1),
(@ENTRY, 55832, 11, 1, 0, 1, 1),
(@ENTRY, 65660, -40, 1, 0, 1, 1);

SET @ENTRY := 43879; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56359, 19, 1, 0, 1, 1),
(@ENTRY, 56357, 19, 1, 0, 1, 1),
(@ENTRY, 55356, 18, 1, 0, 1, 1),
(@ENTRY, 56358, 80, 1, 0, 1, 1),
(@ENTRY, 56360, 19, 1, 0, 1, 1),
(@ENTRY, 65660, -9, 1, 0, 1, 1),
(@ENTRY, 71715, 0.5, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Vortex sauvage 

SET @ENTRY := 45912;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 75, 1, 0, 2, 6),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

SET @ENTRY := 45913; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 75, 1, 0, 2, 6),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Soldat bourrasque: 

SET @ENTRY := 45477;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 75, 1, 0, 2, 6),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

SET @ENTRY := 57510; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 75, 1, 0, 2, 6),
(@ENTRY, 52506, 5, 1, 0, 1, 1),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Prince-nuage : 

SET @ENTRY := 45917;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

SET @ENTRY := 45918; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Grain turbulent : 

SET @ENTRY := 45924;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

SET @ENTRY := 45925; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Assassin empyréen :

SET @ENTRY := 45922;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

SET @ENTRY :=45923; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Jeune dragon des tempêtes : 

SET @ENTRY := 45919;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 4, 1, 0, 1, 1);

SET @ENTRY :=45920; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55855, 3, 1, 0, 1, 1),
(@ENTRY, 55854, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Ministre de l'air : 

SET @ENTRY := 45930;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 50, 1, 0, 1, 11),
(@ENTRY, 68198, 9, 1, 0, 1, 2);

SET @ENTRY :=45931; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 77, 1, 0, 1, 11),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 68197, 5, 1, 0, 1, 2);


--
-- ---------------------------------------------------------------
--  Adepte du temple:

SET @ENTRY := 45935;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 55854, 2, 1, 0, 1, 1);

SET @ENTRY :=45936; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 68197, 5, 1, 0, 1, 2);


--
-- ---------------------------------------------------------------
-- Serviteur d'Asaad: 

SET @ENTRY := 45926;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 55854, 2, 1, 0, 1, 1);


SET @ENTRY :=45927; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 68197, 4, 1, 0, 1, 2);


--
-- ---------------------------------------------------------------
--  Exécuteur du Calife :

SET @ENTRY := 45928;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 55854, 1.9, 1, 0, 1, 1);

SET @ENTRY :=45929; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 13, 1, 0, 1, 2),
(@ENTRY, 68197, 5, 1, 0, 1, 2);

--
-- ---------------------------------------------------------------
--   Mistral cuirassé :

SET @ENTRY :=45915; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 80, 1, 0, 2, 6),
(@ENTRY, 55855, 2, 1, 0, 1, 1),
(@ENTRY, 55854, 2, 1, 0, 1, 1),
(@ENTRY, 52506, 3, 1, 0, 1, 1);

SET @ENTRY :=45916; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 77, 1, 0, 2, 6),
(@ENTRY, 55854, 2, 1, 0, 1, 1),
(@ENTRY, 52506, 9, 1, 0, 1, 1);