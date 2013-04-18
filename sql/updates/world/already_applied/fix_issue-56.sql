/* Fix double spe */

UPDATE `creature_template` SET `gossip_menu_id` = '' WHERE `npcflag` IN (49,51); 