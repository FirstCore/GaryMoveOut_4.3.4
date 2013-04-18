--
-- Fix probleme vendeur #132
--

-- Suppression doublon
DELETE FROM `npc_vendor` WHERE `item` = 60286 AND `ExtendedCost` = 3051;
DELETE FROM `npc_vendor` WHERE `item` = 60351 AND `ExtendedCost` = 3051;
DELETE FROM `npc_vendor` WHERE `item` = 65190 AND `ExtendedCost` = 3067;
DELETE FROM `npc_vendor` WHERE `item` = 65193 AND `ExtendedCost` = 3088;
DELETE FROM `npc_vendor` WHERE `item` = 65195 AND `ExtendedCost` = 3066;
DELETE FROM `npc_vendor` WHERE `item` = 65198 AND `ExtendedCost` = 3133;
DELETE FROM `npc_vendor` WHERE `item` = 65203 AND `ExtendedCost` = 3132;
DELETE FROM `npc_vendor` WHERE `item` = 65207 AND `ExtendedCost` = 3150;
DELETE FROM `npc_vendor` WHERE `item` = 65210 AND `ExtendedCost` = 3063;
DELETE FROM `npc_vendor` WHERE `item` = 65213 AND `ExtendedCost` = 3130;
DELETE FROM `npc_vendor` WHERE `item` = 65233 AND `ExtendedCost` = 3048;
DELETE FROM `npc_vendor` WHERE `item` = 65238 AND `ExtendedCost` = 3048;
DELETE FROM `npc_vendor` WHERE `item` = 65241 AND `ExtendedCost` = 3058;
DELETE FROM `npc_vendor` WHERE `item` = 65243 AND `ExtendedCost` = 3124;
DELETE FROM `npc_vendor` WHERE `item` = 65253 AND `ExtendedCost` = 3120;
DELETE FROM `npc_vendor` WHERE `item` = 65258 AND `ExtendedCost` = 3120;
DELETE FROM `npc_vendor` WHERE `item` = 65260 AND `ExtendedCost` = 3072;
DELETE FROM `npc_vendor` WHERE `item` = 65263 AND `ExtendedCost` = 3139;
DELETE FROM `npc_vendor` WHERE `item` = 65266 AND `ExtendedCost` = 3071;
DELETE FROM `npc_vendor` WHERE `item` = 65268 AND `ExtendedCost` = 3138;
DELETE FROM `npc_vendor` WHERE `item` = 65271 AND `ExtendedCost` = 3070;
DELETE FROM `npc_vendor` WHERE `item` = 65273 AND `ExtendedCost` = 3137;


-- Correction mauvais extendedcost
UPDATE `npc_vendor` SET `ExtendedCost` = 3118 WHERE `item` = 65193 AND `ExtendedCost` = 3134;
