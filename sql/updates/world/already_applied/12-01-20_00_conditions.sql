--
-- Conditions
--

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=13 AND `SourceEntry`=93072 AND `SourceGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES (13,0,93072,18,0,1,50047,1,0,'Get our boys back - target Injured Stormwind Infantry');

