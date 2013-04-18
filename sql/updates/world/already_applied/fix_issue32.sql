--
-- Fix issues #32
--

UPDATE `creature_template` SET `gossip_menu_id` = '' WHERE `entry` IN (16651,16652,16653);

