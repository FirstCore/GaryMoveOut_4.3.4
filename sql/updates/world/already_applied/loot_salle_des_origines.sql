--
-- EXEMPLE Table de loot
--

/* POUR INFO :
entry - id item - %loot - 1 - 0 - quantité mini - quantité maxi

Boss  Isiset: 39587 - 48710
Boss Ammunae:  39731 - 48715
Boss Enrageterre Ptah : 39428 - 48714
Boss  Anraphet : 39788 - 48902
Boss  Rajh : 39378 - 48815
Boss  Setesh : 39732 - 48776
Boss Gardien du temple Anhuur :39425 - 49262
Gardien d'air: 39803 - 48896
Gardien de flammes : 39800 - 48894
Gardien de terre : 39801 - 48895
Gardien d'eau : 39802 - 48892
Lancelombre du temple : 48141 - 49309 --
Traqueur véloce du temple : 48139 - 49307
Lanceur de runes du temple : 48140 - 49308
Sculptefeu du temple : 48143 - 49310
Scarabée caustique : 40310 - 49294
Glisseur venimeux : 39440 - 57540
Horreur os-poussière : 40787 - 49301
Tourmenteur os-poussière : 40311 - 49295
Anomalie spatiale :40170 - 49293
Animateur de flux : 40033 - 49291
39370 <= en attente 
Porte-parole Solegrâce : 39373 - 49285
Nymphe gardienne de la vie : 40715 - 49300
*/


--
-- ---------------------------------------------------------------
-- Boss  Isiset

SET @ENTRY :=39587;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55994, 80, 1, 0, 1, 1),
(@ENTRY, 55996, 20, 1, 0, 1, 1),
(@ENTRY, 55995, 19, 1, 0, 1, 1),
(@ENTRY, 55993, 19, 1, 0, 1, 1),
(@ENTRY, 55992, 13, 1, 0, 1, 1);


SET @ENTRY :=48710; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56415, 80, 1, 0, 1, 1),
(@ENTRY, 56413, 19, 1, 0, 1, 1),
(@ENTRY, 56416, 19, 1, 0, 1, 1),
(@ENTRY, 56412, 19, 1, 0, 1, 1),
(@ENTRY, 56414, 20, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- boss Ammunae:  

SET @ENTRY :=39731;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56000, 75, 1, 0, 1, 1),
(@ENTRY, 55998, 20, 1, 0, 1, 1),
(@ENTRY, 55997, 21, 1, 0, 1, 1),
(@ENTRY, 55999, 20, 1, 0, 1, 1);


SET @ENTRY :=48715; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56421, 19, 1, 0, 1, 1),
(@ENTRY, 56418, 75, 1, 0, 1, 1),
(@ENTRY, 56419, 19, 1, 0, 1, 1),
(@ENTRY, 56417, 19, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss Enrageterre Ptah :

SET @ENTRY :=39428;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56097, 80, 1, 0, 1, 1),
(@ENTRY, 56095, 23, 1, 0, 1, 1),
(@ENTRY, 56093, 17, 1, 0, 1, 1),
(@ENTRY, 56096, 17, 1, 0, 1, 1),
(@ENTRY, 56094, 13, 1, 0, 1, 1);


SET @ENTRY :=48714; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56422, 18, 1, 0, 1, 1),
(@ENTRY, 56423, 80, 1, 0, 1, 1),
(@ENTRY, 56426, 19, 1, 0, 1, 1),
(@ENTRY, 56425, 20, 1, 0, 1, 1),
(@ENTRY, 56424, 20, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss  Anraphet :

SET @ENTRY :=39788;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 57855, 24, 1, 0, 1, 1),
(@ENTRY, 57857, 80, 1, 0, 1, 1),
(@ENTRY, 57860, 16, 1, 0, 1, 1),
(@ENTRY, 57858, 16, 1, 0, 1, 1),
(@ENTRY, 57856, 16, 1, 0, 1, 1);


SET @ENTRY :=48902; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 57870, 19, 1, 0, 1, 1),
(@ENTRY, 57869, 19, 1, 0, 1, 1),
(@ENTRY, 57866, 19, 1, 0, 1, 1),
(@ENTRY, 57868, 19, 1, 0, 1, 1),
(@ENTRY, 57867, 80, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss  Rajh : 

SET @ENTRY :=39378;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56108, 90, 1, 0, 1, 1),
(@ENTRY, 56100, 24, 1, 0, 1, 1),
(@ENTRY, 56102, 23, 1, 0, 1, 1),
(@ENTRY, 56106, 23, 1, 0, 1, 1),
(@ENTRY, 56107, 19, 1, 0, 1, 1),
(@ENTRY, 56098, 18, 1, 0, 1, 1),
(@ENTRY, 56101, 17, 1, 0, 1, 1),
(@ENTRY, 56105, 12, 1, 0, 1, 1),
(@ENTRY, 56099, 12, 1, 0, 1, 1),
(@ENTRY, 56104, 11, 1, 0, 1, 1);


SET @ENTRY :=48815; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52078, 100, 1, 0, 1, 1),
(@ENTRY, 56428, 19, 1, 0, 1, 1),
(@ENTRY, 56430, 19, 1, 0, 1, 1),
(@ENTRY, 56434, 90, 1, 0, 1, 1),
(@ENTRY, 56433, 19, 1, 0, 1, 1),
(@ENTRY, 56435, 19, 1, 0, 1, 1),
(@ENTRY, 56431, 19, 1, 0, 1, 1),
(@ENTRY, 56427, 18, 1, 0, 1, 1),
(@ENTRY, 56432, 18, 1, 0, 1, 1),
(@ENTRY, 56436, 19, 1, 0, 1, 1),
(@ENTRY, 56429, 19, 1, 0, 1, 1),
(@ENTRY, 71715, 0.4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss  Setesh :

SET @ENTRY :=39732;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 57865, 80, 1, 0, 1, 1),
(@ENTRY, 57864, 20, 1, 0, 1, 1),
(@ENTRY, 57863, 20, 1, 0, 1, 1),
(@ENTRY, 57861, 13, 1, 0, 1, 1),
(@ENTRY, 57862, 13, 1, 0, 1, 1),
(@ENTRY, 71635, 1.2, 1, 0, 1, 1);


SET @ENTRY :=48776; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 57873, 80, 1, 0, 1, 1),
(@ENTRY, 57872, 19, 1, 0, 1, 1),
(@ENTRY, 57871, 19, 1, 0, 1, 1),
(@ENTRY, 57874, 19, 1, 0, 1, 1),
(@ENTRY, 57875, 20, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Boss Gardien du temple Anhuur :

SET @ENTRY :=39425;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 55889, 80, 1, 0, 1, 1),
(@ENTRY, 55888, 20, 1, 0, 1, 1),
(@ENTRY, 55886, 20, 1, 0, 1, 1),
(@ENTRY, 55890, 13, 1, 0, 1, 1),
(@ENTRY, 55887, 14, 1, 0, 1, 1),
(@ENTRY, 71637, 1.3, 1, 0, 1, 1);


SET @ENTRY :=49262; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56407, 20, 1, 0, 1, 1),
(@ENTRY, 56411, 80, 1, 0, 1, 1),
(@ENTRY, 56410, 20, 1, 0, 1, 1),
(@ENTRY, 56408, 19, 1, 0, 1, 1),
(@ENTRY, 56409, 20, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Gardien d'air: 

SET @ENTRY :=39803;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56110, 100, 1, 0, 1, 1);


SET @ENTRY :=48896; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56110, 100, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
-- Gardien de flammes :

SET @ENTRY :=39800;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56109, 3, 1, 0, 1, 1),
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1);


SET @ENTRY :=48894; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56109, 3, 1, 0, 1, 1),
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
-- Gardien de terre : 

SET @ENTRY :=39801;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56109, 3, 1, 0, 1, 1);


SET @ENTRY :=48895; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56110, 77, 1, 0, 1, 1),
(@ENTRY, 56111, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 3, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Gardien d'eau :

SET @ENTRY :=39802;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56111, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 77, 1, 0, 1, 1);


SET @ENTRY :=48892; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56109, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Lancelombre du temple :

SET @ENTRY :=48141;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=49309; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Traqueur véloce du temple : 

SET @ENTRY :=48139;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 8),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=49307; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 8),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Lanceur de runes du temple : 

SET @ENTRY :=48140;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=49308; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Sculptefeu du temple : 

SET @ENTRY :=48143;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=49310; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58268, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 2),
(@ENTRY, 58256, 4, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Scarabée caustique : 

SET @ENTRY :=40310;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56111, 3, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 77, 1, 0, 1, 1);


SET @ENTRY :=49294; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56111, 3, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 77, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Glisseur venimeux : 

SET @ENTRY :=39440;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 3, 1, 0, 1, 1);


SET @ENTRY :=57540; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 56111, 77, 1, 0, 1, 1),
(@ENTRY, 56110, 3, 1, 0, 1, 1),
(@ENTRY, 56109, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Horreur os-poussière :

SET @ENTRY :=40787;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 68197, 4, 1, 0, 1, 2);


SET @ENTRY :=49301; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 10, 1, 0, 1, 2),
(@ENTRY, 58266, 6, 1, 0, 1, 1),
(@ENTRY, 59230, 3, 1, 0, 1, 1);


--
-- ---------------------------------------------------------------
--  Tourmenteur os-poussière : 

SET @ENTRY :=40311;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 77, 1, 0, 1, 6),
(@ENTRY, 68198, 12, 1, 0, 1, 2),
(@ENTRY, 68197, 5, 1, 0, 1, 2);


SET @ENTRY :=49295; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 75, 1, 0, 1, 6),
(@ENTRY, 68198, 11, 1, 0, 1, 2),
(@ENTRY, 58266, 6, 1, 0, 1, 1),
(@ENTRY, 59230, 3, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Anomalie spatiale :

SET @ENTRY :=40170;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 3, 1, 0, 1, 1);


SET @ENTRY :=49293; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 100, 1, 0, 2, 6);

--
-- ---------------------------------------------------------------
--  Animateur de flux : 40033 - 49291

SET @ENTRY :=40033;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52328, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 7, 1, 0, 1, 1);


SET @ENTRY :=49291; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52328, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 7, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Porte-parole Solegrâce : 

SET @ENTRY :=39373;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52325, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 9, 1, 0, 1, 1);

SET @ENTRY :=49285; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 52325, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 9, 1, 0, 1, 1);

--
-- ---------------------------------------------------------------
--  Nymphe gardienne de la vie : 

SET @ENTRY :=40715;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58260, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 5),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=49300; 
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES
(@ENTRY, 53010, 80, 1, 0, 1, 6),
(@ENTRY, 68198, 15, 1, 0, 1, 2),
(@ENTRY, 58260, 8, 1, 0, 1, 1),
(@ENTRY, 68197, 5, 1, 0, 1, 5),
(@ENTRY, 58256, 4, 1, 0, 1, 1);


SET @ENTRY :=39370;
DELETE FROM `creature_loot_template` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_loot_template` VALUES 
(@ENTRY, 52325, 100, 1, 0, 2, 6),
(@ENTRY, 52506, 11, 1, 0, 1, 1);


