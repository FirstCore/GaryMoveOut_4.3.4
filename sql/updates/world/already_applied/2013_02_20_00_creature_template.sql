-- Correction npc HDV à Hurlevent [Fix #66]
UPDATE creature_template SET gossip_menu_id = 0, npcflag = 2097155 WHERE entry IN (8670, 8719, 15659);
