UPDATE `quest_signal` SET `status` = 3, `date` = '2013-04-16 00:00:00', `name` = 'Mikadmin', `commentaire` = '' WHERE `id` IN (10811,10814,10836,10837,10854,10858,10866,10870,11013,11014,11016,11018,11017,11015,11035,11049,11053,11075,11083,11081,11082,11054,11084,11086,11089,11063,11064,11067,11068,11069,11071,11092,11094,11097,11099,11101,11107,11108);

DELETE FROM `quest_signal` WHERE `id` IN (10804,11020,11055,11090,11097);
INSERT INTO `quest_signal` (`id`, `status`, `date`, `name`, `commentaire`) VALUES
(10804, 2, '2013-04-16 00:00:00', 'Mikadmin', 'le drake ne mange pas les carcasse'),
(11020, 2, '2013-04-16 00:00:00', 'Mikadmin', 'les peons ne mange pas la viande posé'),
(11055, 2, '2013-04-16 00:00:00', 'Mikadmin', 'impossible de punir les peons désobéissant'),
(11090, 2, '2013-04-16 00:00:00', 'Mikadmin', 'impossible de faire cette quete'),
(11097, 2, '2013-04-16 00:00:00', 'Mikadmin', 'pas d''event');