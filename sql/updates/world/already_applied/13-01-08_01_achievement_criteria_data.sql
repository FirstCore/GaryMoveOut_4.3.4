-- Fix erreur consol achievement_criteria_data

DELETE FROM `disables` WHERE `entry` IN (7625,7628,6800);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7625,7628,6800,5541,5542,5543,7636,7740,9798,7626,7634) AND `type`=11;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 6800 AND `type`=6;

INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7625,11,0,0, 'achievement_bg_sa_artillery'),
(7628,11,0,0, 'achievement_bg_sa_artillery'),
(6800, 6, 3057, 0, ''),
(6800, 11, 0, 0, 'achievement_sickly_gazelle'),
(5541,11,0,0,'achievement_arena_2v2_kills'),
(5542,11,0,0,'achievement_arena_3v3_kills'),
(5543,11,0,0,'achievement_arena_5v5_kills'),
(7636,11,0,0,'achievement_bg_sa_defense_of_ancients'),
(7740,11,0,0,'achievement_bg_sa_defense_of_ancients'),
(9798,11,0,0, 'achievement_tilted'),
(7626, 11, 0, 0, 'achievement_not_even_a_scratch'),
(7634, 11, 0, 0, 'achievement_not_even_a_scratch');