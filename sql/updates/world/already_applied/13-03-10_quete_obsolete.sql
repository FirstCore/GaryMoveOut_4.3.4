-- 
-- Quest obsolete
--

DELETE FROM `creature_questrelation` WHERE `quest` = 27923;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 27923;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 27923;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 27923;

DELETE FROM `creature_questrelation` WHERE `quest` = 26986;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 26986;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 26986;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 26986;

DELETE FROM `creature_questrelation` WHERE `quest` = 9495;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9495;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9495;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 9495;
