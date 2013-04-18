-- Fix erreur consol item_template

DELETE FROM `item_script_names` WHERE `Id` IN (34475,34489,24538,31742,30175,35704,39878,44717,35127,33098,35228,35850,53510,5397,31088);

INSERT INTO `item_script_names` Value 
(34475,'item_only_for_flight'),
(34489,'item_only_for_flight'),
(24538,'item_only_for_flight'),
(31742,'item_nether_wraith_beacon'),
(30175,'item_gor_dreks_ointment'),
(35704,'item_incendiary_explosives'),
(39878,'item_mysterious_egg'),
(44717,'item_disgusting_jar'),
(35127,'item_pile_fake_furs'),
(33098,'item_petrov_cluster_bombs'),
(35228,'item_dehta_trap_smasher'),
(35850,'item_Trident_of_Nazjan'),
(53510,'item_captured_frog'),
(5397,'item_defias_gunpowder'),
(31088,'item_tainted_core');