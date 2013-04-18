-- Fix erreur consol areatrigger_scripts

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5046,5047,4752,3551,3549,3547,3546,3552,3548,4356,4829,6845,4820);

INSERT INTO areatrigger_scripts VALUES
(5046,'at_sholazar_waygate'),
(5047,'at_sholazar_waygate'),
(4752,'at_nats_landing'),
(3551,'at_bring_your_orphan_to'),
(3549,'at_bring_your_orphan_to'),
(3547,'at_bring_your_orphan_to'),
(3546,'at_bring_your_orphan_to'),
(3552,'at_bring_your_orphan_to'),
(3548,'at_bring_your_orphan_to'),
(4356,'at_bring_your_orphan_to'),
(4829,'at_brewfest'),
(6845, 'at_sulfuron_keep'),
(4820,'at_brewfest');