--
-- Fix Qu�te M�tier
--

/* POUR INFO
UPDATE `quest_template` SET `RequiredSkillId` = {skill} WHERE `Id` = {quest_id};
*/

-- ALCHIMISTE 
UPDATE `quest_template` SET `RequiredSkillId` = 171 WHERE `Id` IN (30122,14151,1581,29481,29067,29482,30597);

-- ARCHEOLOGIE 
UPDATE `quest_template` SET `RequiredSkillId` = 794 WHERE `Id` IN (28802,28799,28803,28804,28798,28801,28800,29261,29262);

-- CALLIGRAPHIE 
UPDATE `quest_template` SET `RequiredSkillId` = 773 WHERE `Id` IN (13311,12518,12517,12798,11934);

-- CUISINIER 
UPDATE `quest_template` SET `RequiredSkillId` = 185 WHERE `Id` IN (11380,11377,11381,11379,13103,13115,13101,13113,13100,13112,13107,13116,13087,13088,13089,13090,13102,13114,8307,8317,8313,6610,6612,6611,7321,862,2178,384,4161,13825,13571);

-- SECOURISME 
UPDATE `quest_template` SET `RequiredSkillId` = 129 WHERE `Id` IN (6625,6623,6624,6622);

-- PECHE 
UPDATE `quest_template` SET `RequiredSkillId` = 356 WHERE `Id` IN (11666,13833,11665,13834,13836,11669,13832,13845,11668,13830,11667,13827,14203,11531,8229,8228,6609,6607,6608,1580,1579,8194,24806,24803,8193,8225,8224,8221,13826);

-- HERBORISTE 
UPDATE `quest_template` SET `RequiredSkillId` = 182 WHERE `Id` = 866;

-- INGENIEUR 
UPDATE `quest_template` SET `RequiredSkillId` = 202 WHERE `Id` IN (9636,9635,1559,3647,3644,3645,3646,3640,3638,3642,3630,3632,3634,3635,3637,3629,4181,3526,3633,3641,3639,3643);

-- FORGERON 
UPDATE `quest_template` SET `RequiredSkillId` = 164 WHERE `Id` IN (5126,5103,10891,10892,7652,7653,7654,7655,7656,7657,7658,7659,5307,7649,7650,7651,5306,5305,2757,2759,5283,5301,2760,2756,2758,5284,5302,2771,2765,2764,2761,2763,2762,2773,2772,3321,2751,2752,2754,2755,2753,1578,1618);

-- JOALLIERIE 
UPDATE `quest_template` SET `RequiredSkillId` = 755 WHERE `Id` IN (13041,12918,13004,12952,13002,13148,12958,12962,12959,12961,12963,12960,14160);

-- TRAVAIL DU CUIR 
UPDATE `quest_template` SET `RequiredSkillId` = 165 WHERE `Id` IN (5141,5145,5144,5146,5143,5148,2853,2860,2847,2854,2851,2858,2850,2857,2852,2859,2848,2855,2849,2856,1582);

-- COUTURIER 
UPDATE `quest_template` SET `RequiredSkillId` = 197 WHERE `Id` IN (10831,10833,10832,6032,3379,3385,3402,13265,13268,13269,13270,13272);
