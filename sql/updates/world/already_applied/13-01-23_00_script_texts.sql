-- ---------------------------------------------
--  UPDATE SCRIPT_TEXTS GILNEAS-CITY
-- ---------------------------------------------

/* les traduction ce fairont ici une fois les textes traduit il faudra reimplanté ce patch */

-- Clean up first
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1638999 AND -1638000;

-- Prince Liam Greymane Phase 1
INSERT INTO `script_texts` VALUES (34850, -1638000, 'I want the perimeter secured and the gates manned by two guards at all times. No one gets in, no one gets out.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19615, 0, 0, 1, 'SAY_PRINCE_LIAM_GREYMANE_1 - Say OOC');
INSERT INTO `script_texts` VALUES (34850, -1638001, 'We protected Gilneas from the Scourge. We protected Gilneas during the Northgate rebellion. We will protect Gilneas from whatever this new threat may be.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19616, 0, 0, 25, 'SAY_PRINCE_LIAM_GREYMANE_2 - Say OOC');
INSERT INTO `script_texts` VALUES (34850, -1638002, 'Stand ready, guards! We don\'t know how many intruders we\'re dealing with, but the Headlands are overrun and we\'re cut off from the harbor towns. Expect to be outnumbered.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19614, 0, 0, 1, 'SAY_PRINCE_LIAM_GREYMANE_3 - Say OOC');

-- Prince Liam Greymane Phase 2
INSERT INTO `script_texts` VALUES (34913, -1638025, 'Stand your ground, men!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19617, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
INSERT INTO `script_texts` VALUES (34913, -1638026, 'Defeat these foul beasts!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19618, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
INSERT INTO `script_texts` VALUES (34913, -1638027, 'Protect the civilians!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19619, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
INSERT INTO `script_texts` VALUES (34913, -1638028, 'Push them back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19620, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
INSERT INTO `script_texts` VALUES (34913, -1638029, 'Take heart, men! We must protect our city!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19621, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');

-- Frightened Citizen 34981 with no worgen behind
INSERT INTO `script_texts` VALUES (34981, -1638003, 'Protect me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_1a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638004, 'What in the world? Let\'s get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_2a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638005, 'Worgen! Worgen everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_3a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638006, 'Flee! They\'re everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_4a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638007, 'No time to Waste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_5a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638008, 'This place isn\'t safe. Let\'s Leave!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_6a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638009, 'Let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_7a - No worgen behind');
INSERT INTO `script_texts` VALUES (34981, -1638010, 'Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_8a - No worgen behind');
-- Frightened Citizen when worgen is behind them
INSERT INTO `script_texts` VALUES (35836, -1638011, 'I don\'t want to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_1b - Worgen behind');
INSERT INTO `script_texts` VALUES (35836, -1638012, 'There\'s one after me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_2b - Worgen behind');
INSERT INTO `script_texts` VALUES (35836, -1638013, 'It\'s coming right for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_3b - Worgen behind');
INSERT INTO `script_texts` VALUES (35836, -1638014, 'Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_4b - Worgen behind');
INSERT INTO `script_texts` VALUES (35836, -1638015, 'Help me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_5b - Worgen behind');

-- Panicked Citizen at gate
INSERT INTO `script_texts` VALUES (44086, -1638016, 'What\'s going on? I thought I saw something on the rooftops.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_1 - Phase 1 at gate');
INSERT INTO `script_texts` VALUES (44086, -1638017, 'My children are in Stormglen alone! I have to get to them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_2 - Phase 1 at gate');
INSERT INTO `script_texts` VALUES (44086, -1638018, 'You can\'t do this to us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_3 - Phase 1 at gate');
INSERT INTO `script_texts` VALUES (44086, -1638019, 'What... what are those things on the rooftops?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN_4 - Phase 1 at gate');

-- Panicked Citizen, millitary distrcit
INSERT INTO `script_texts` VALUES (44086, -1638020, 'We have to get out of here! The howling gets louder every night.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN - Military distrcit');
INSERT INTO `script_texts` VALUES (44086, -1638021, 'They told us Gilneas City was safe...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_PANICKED_CITIZEN - Military distrcit');

-- Gilneas City Guard
INSERT INTO `script_texts` VALUES (34864, -1638022, 'No one\'s allowed to leave. Prince Liam\'s orders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_1 - At gate');
INSERT INTO `script_texts` VALUES (34864, -1638023, 'Stay calm. We have everything under control.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_2 - At gate');
INSERT INTO `script_texts` VALUES (34864, -1638024, 'It isn\'t safe to leave, there\'s something lurking out there in the woods.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GILNEAS_CITY_GUARD_3 - At gate');

-- Prince Liam Greymane Phase 2
REPLACE INTO `script_texts` VALUES (34913, -1638022, 'Stand your ground, men!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19617, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
REPLACE INTO `script_texts` VALUES (34913, -1638023, 'Defeat these foul beasts!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19618, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
REPLACE INTO `script_texts` VALUES (34913, -1638024, 'Protect the civilians!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19619, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
REPLACE INTO `script_texts` VALUES (34913, -1638025, 'Push them back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19620, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');
REPLACE INTO `script_texts` VALUES (34913, -1638026, 'Take heart, men! We must protect our city!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19621, 1, 0, 0, 'SAY_PRINCE_LIAM_GREYMANE - Phase 2 OOC');

-- Frightened Citizen 34981 with no worgen behind
REPLACE INTO `script_texts` VALUES (34981, -1638003, 'Protect me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_1a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638004, 'What in the world? Let\'s get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_2a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638005, 'Worgen! Worgen everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_3a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638006, 'Flee! They\'re everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_4a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638007, 'No time to Waste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_5a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638008, 'This place isn\'t safe. Let\'s Leave!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_6a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638009, 'Let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_7a - No worgen behind');
REPLACE INTO `script_texts` VALUES (34981, -1638010, 'Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_8a - No worgen behind');
-- Frightened Citizen when worgen is behind them
REPLACE INTO `script_texts` VALUES (35836, -1638011, 'I don\'t want to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_1b - Worgen behind');
REPLACE INTO `script_texts` VALUES (35836, -1638012, 'There\'s one after me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_2b - Worgen behind');
REPLACE INTO `script_texts` VALUES (35836, -1638013, 'It\'s coming right for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_3b - Worgen behind');
REPLACE INTO `script_texts` VALUES (35836, -1638014, 'Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_4b - Worgen behind');
REPLACE INTO `script_texts` VALUES (35836, -1638015, 'Help me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_5b - Worgen behind');

-- Frightened Citizen with no worgen behind, 2 template entries
REPLACE INTO `script_texts` VALUES (0, -1638003, 'Protect me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_1a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638004, 'What in the world? Let\'s get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_2a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638005, 'Worgen! Worgen everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_3a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638006, 'Flee! They\'re everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_4a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638007, 'No time to Waste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_5a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638008, 'This place isn\'t safe. Let\'s Leave!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_6a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638009, 'Let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_7a - No worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638010, 'Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'SAY_FRIGHTENED_CITIZEN_8a - No worgen behind');

-- Frightened Citizen when worgen is behind them, 2 template entries
REPLACE INTO `script_texts` VALUES (0, -1638011, 'I don\'t want to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_1b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638012, 'There\'s one after me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_2b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638013, 'It\'s coming right for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_3b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638014, 'Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_4b - Worgen behind');
REPLACE INTO `script_texts` VALUES (0, -1638015, 'Help me, please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 430, 'SAY_FRIGHTENED_CITIZEN_5b - Worgen behind');

DELETE FROM `script_texts` WHERE `entry` IN (-1977000, -1977001, -1977002, -1977003, -1977004, -1977005, -1977006, -1977007, -1977008, -1977009, -1977010, -1977011, -1977012, -1977013, -1977014, -1977015, -1977016, -1977017, -1977018, -1977019, -1977020);
INSERT IGNORE INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(34850,-1977000,'We defended Gilneas from the Scourge and during the uprising in the Northern Gateway. We will protect it from any new hazards that would threaten him.','',19616,0,0,0,'gilneas'),
(34850,-1977001,'Guards, get ready! We do not know how many will be attacking, but Rocky Point is already occupied by the enemy and we are cut off from the coastal cities. The enemy superior to us the number!','',19614,0,0,0,'gilneas'),
(34850,-1977002,'It is necessary to protect the perimeter and at all times to keep the two guards at the gate. No one was let in and not let out!','',19615,0,0,0,'gilneas'),
(34851,-1977003,'What ... what kind of creatures are on the roof?','',0,0,0,0,'gilneas'),
(34981,-1977004,'You can not spend a minute!','',0,0,0,0,'gilneas'),
(34981,-1977005,'It is not safe. We must go!','',0,0,0,0,'gilneas'),
(34981,-1977006,'Run! They\'re everywhere!','',0,0,0,0,'gilneas'),
(34981,-1977007,'What is happening? Get out of here!','',0,0,0,0,'gilneas'),
(34981,-1977008,'Please do not let them catch me!','',0,0,0,0,'gilneas'),
(34981,-1977009,'Worgen! Worgen are everywhere!','',0,0,0,0,'gilneas'),
(34981,-1977010,'Let\'s go!','',0,0,0,0,'gilneas'),
(34981,-1977011,'Thank you!','',0,0,0,0,'gilneas'),
(35836,-1977012,'I do not want to die!','',0,0,0,0,'gilneas'),
(35836,-1977013,'He goes right for me!','',0,0,0,0,'gilneas'),
(35836,-1977014,'For me, being chased!','',0,0,0,0,'gilneas'),
(35836,-1977015,'Help!','',0,0,0,0,'gilneas'),
(34913,-1977016,'Throw them out!','',0,1,0,0,'gilneas'),
(34913,-1977017,'Stick to a single step!','',0,1,0,0,'gilneas'),
(34913,-1977018,'Defeat these creatures!','',0,1,0,0,'gilneas'),
(34913,-1977019,'Take heart, people! We must protect your city!','',0,1,0,0,'gilneas'),
(34913,-1977020,'Protect the citizens!','',0,1,0,0,'gilneas');  