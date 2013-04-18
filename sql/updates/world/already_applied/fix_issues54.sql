/*######################
# Fixe quete de classe #
######################*/

/*
Pour Info:  1=warrior / 2=paladin / 4=hunter / 8=rogue / 16=priest / 32=dk / 64=shaman / 128=mage / 256=warlock / 1024=druid
*/

--
-- Chamane
--
Update `quest_template` SET `RequiredClasses` = 64 WHERE `id` IN (24759,24762,24758,24763,24761,9421,26969,14011,25143,27027,24760,3093,3089,24494,24527,27353,27280,27397,27270,28401,28465,28301,28287,7505,8698,8690,8623,8622,8706,8602,8624,8621);

--
-- Chasseur
--
Update `quest_template` SET `RequiredClasses` = 4 WHERE `id` IN (24777,24780,24776,14290,28759,14276,24778,24781,14275,28767,24779,26963,27021,24964,9288,9393,24530,3117,10070,14007,25139,3092,3087,3108,26947,24962,27278,27266,27395,27344,28394,28461,28260,28297,7503,8696,8704,8712,8657,8656,8659,8658,8626);

--
-- Chevalier de la Mort
--
Update `quest_template` SET `RequiredClasses` = 32 WHERE `id` IN (12593,12679,12722,12720,12687,12723,12711,12754,12725,12697,12778,12757,12756,12636,13166,13189,12715,12717,12848,12779,12842,12619,12801,12670,12641,13188,12657,12716,12714,12724,12733,12800,12698,12849,13410,13411,12701,12719,12718,12850,13165,12678,12751,12727,12700,12755,12742,12743,12744,12745,12746,28649,12739,12747,12748,12749,12750,28650,12738,12706,12680,13105,13793,13814,13864,13863,13788,13812,13795,13791,13813);

--
-- D�moniste
--
Update `quest_template` SET `RequiredClasses` = 256 WHERE `id` IN (14274,14273,26272,26202,26273,26276,14287,28773,26274,26277,28765,26275,26904,10073,14012,25145,24968,8563,26201,3090,26424,3099,3115,9529,10789,10790,10788,27272,27402,27355,27282,4785,4976,28399,28459,28259,28299,7502,9271,8702,8661,8662,8710,8664,8694,8660,8663);

--
-- Druide
--
Update `quest_template` SET `RequiredClasses` = 1024 WHERE `id` IN (14283,24764,24765,24768,14291,24766,14280,24769,24767,26948,27067,3120,3094,5928,27356,27404,27273,27283,28343,28289,7506,9269,8700,8692,8708,8667,8666,8669,8665,8668,11102);

--
-- Guerrier
--
Update `quest_template` SET `RequiredClasses` = 1 WHERE `id` IN (14266,24607,26203,24639,24642,14286,28774,24640,24643,28766,24641,14265,14013,25147,27091,26945,24531,24969,9289,8329,31172,27020,3116,26204,3091,2383,3095,26425,3106,26958,10350,9582,27281,27337,27365,27225,28258,28290,28393,28457,7499,8556,8557,8561,8562,8558,8560,8559,8544);

--
-- Mage
--
Update `quest_template` SET `RequiredClasses` = 128 WHERE `id` IN (14277,26197,24751,24754,24750,14288,28769,26198,24752,24755,14281,28757,24753,24965,9290,8328,26841,26940,26968,10068,14008,25149,25138,24526,26421,3098,24496,9595,9404,9403,9402,9487,9488,27354,27400,27277,27271,28398,28458,28300,7500,9270,8699,8707,8633,8632,8691,9362,8634,8631,8625,9364,12172,12173);

--
-- Paladin
--
Update `quest_template` SET `RequiredClasses` = 2 WHERE `id` IN (28770,28762,27023,9287,9676,27015,26966,10069,24528,3107,1789,1790,1442,1655,27343,27434,27265,27304,27298,27403,28405,28466,28473,28302,28268,28303,7501,8703,8695,8628,8627,8711,8630,8629,8655);

--
-- Pretre
--
Update `quest_template` SET `RequiredClasses` = 16 WHERE `id` IN (14279,24784,14278,26199,24783,24786,24782,14289,28771,24787,28763,24785,26949,26970,10072,14009,27066,24533,9291,8564,27014,24966,3119,26200,3097,26422,3110,27362,27361,27268,27331,27436,27439,27274,27334,27269,27437,28164,27332,27363,27435,27441,27335,28328,28474,28475,28477,28285,28304,28307,7504,9257,8697,8592,8594,8705,8689,8596,8593,8603);

--
-- Voleur
--
Update `quest_template` SET `RequiredClasses` = 8 WHERE `id` IN (28795,26206,14272,24771,24774,28821,24770,14285,28772,24772,28811,24775,14269,28787,28764,24773,26915,24967,24532,14010,25141,9392,3102,3118,26207,26946,3088,3096,26423,3109,2206,10372,27396,27279,27267,27351,6701,28406,28463,28298,28262,7498,8701,8693,8709,8639,8638,8637,8640,8641,30116,30093,30107,29934,30106,30109,30092,30108,30118,29847,29801,29802,30113);