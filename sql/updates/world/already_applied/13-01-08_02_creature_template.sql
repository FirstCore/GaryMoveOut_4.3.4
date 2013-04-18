-- Fix erreur consol creature_template

UPDATE `creature_template` SET `unit_class` = '2' WHERE `entry` IN (37376,37436,37439,37437,37440,37441,50133,49617,49614,46214,46216,50123,50118,50115,32113,32116,32114,32117,32118,49058,49049,50132,49616,49613,46213);
UPDATE `creature_template` SET `unit_class` = '1' WHERE `entry` IN (3766602,3766603);
UPDATE `creature_template` SET `unit_class` = '4' WHERE `entry` IN (3701703,49055,49052,3701702,49054,49051);

UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` IN (44797,46215,46221,47403,47404,48266,3625,4255,5134,5139,10364,10367,11948,12096,12097,13155,13542,13545,13616,13617,27894,28781,30248,34703,34705,34777,34778,35273,36948);

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (48936,46210,49744);

UPDATE `creature_template` SET `InhabitType` = '3' WHERE `entry` = 58000;

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 51088;
