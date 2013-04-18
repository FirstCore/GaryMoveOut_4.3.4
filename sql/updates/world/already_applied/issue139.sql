--
-- Fix problème respawn Dans les instances #139
--

UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `map` = 645 AND `spawntimesecs` IN (300,7200);
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `map` = 643 AND `spawntimesecs` IN (300,7200);
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `map` = 725 AND `spawntimesecs` IN (300,7200);
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `map` = 657 AND `spawntimesecs` IN (300,7200);
UPDATE `creature` SET `spawntimesecs` = 43200 WHERE `map` = 644 AND `spawntimesecs` IN (300,7200);

