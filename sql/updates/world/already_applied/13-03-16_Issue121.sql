--
-- issue 121
--

/* Oublie activation RequiredSkillPoints sur le dernier patch */

UPDATE `quest_template` SET `RequiredSkillPoints` = 1 WHERE `RequiredSkillId` IN (171,773,197,393,333,164,182,202,755,186,165,794,185,356,129);
