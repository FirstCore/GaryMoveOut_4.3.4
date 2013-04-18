-- Fix erreur consol creature_model_info

DELETE FROM `creature_model_info` WHERE `Modelid` IN (46753,362152,39531,39297,39299);

INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(39531, 0, 0, 2, 0),
(39297, 0, 0, 2, 0),
(39299, 0, 0, 2, 0);