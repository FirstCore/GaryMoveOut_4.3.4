--
-- Fix faction & race quete
--

UPDATE `quest_template` SET `RequiredRaces` = 512 WHERE `Id` = 9499;
UPDATE `quest_template` SET `RequiredRaces` = 434 WHERE `Id` = 9498;
UPDATE `quest_template` SET `RequiredRaces` = 2098253 WHERE `Id` = 28767;
UPDATE `quest_template` SET `RequiredClasses` = 4, `RequiredRaces` = 2098253 WHERE `Id` = 28759;