-- Fix erreur consol gameobject_template

UPDATE `gameobject_template` SET `scriptName` = 'go_ethereal_teleport_pad' WHERE `entry` = 184073;
UPDATE `gameobject_template` SET ScriptName='go_gjalerbron_cage' WHERE name='Gjalerbron Cage';
UPDATE `gameobject_template` SET `ScriptName`='go_large_gjalerbron_cage' WHERE `entry`=186490;
UPDATE `gameobject_template` SET ScriptName='go_veil_skith_cage' WHERE entry IN (185202,185203,185204,185205);
UPDATE `gameobject_template` SET `ScriptName`='go_frostblade_shrine' WHERE `entry`=186649;
UPDATE `gameobject_template` SET `ScriptName`= 'go_midsummer_bonfire' WHERE `entry` IN (187559,187564,187914,187916,187917,187919,187920,187921,187922,187923,187924,187925,187926,187927,187928,187929,187930,187931,187932,187933,187934,187935,187936,187937,187938,187939,187940,187941,187942,187943,187944,187945,187946,187947,187948,187949,187950,187951,187952,187953,187954,187955,187956,187957,187958,187959,187960,187961,187962,187963,187964,187965,187966,187967,187968,187969,187970,187971,187972,187973,187974,187975,194032,194033,194034,194035,194036,194037,194038,194039,194040,194042,194043,194044,194045,194046,194048,194049);
UPDATE `gameobject_template` SET `ScriptName`='go_princess_stillpines_cage' WHERE `entry`=181928;
UPDATE `gameobject_template` SET `ScriptName`='go_demon_portal' WHERE `entry` IN (177243,177365,177369,177397,177398,177399,177400,177366,177367,177368);
UPDATE `gameobject_template` SET `ScriptName`='go_blackhoof_cage' WHERE `entry`=186287;
UPDATE `gameobject_template` SET `ScriptName`='go_wind_stone' WHERE `entry` IN (180456,180461,180466,180518,180529,180534,180539,180544,180549,180554,180559,180564);
UPDATE `gameobject_template` SET ScriptName='go_strange_pool' WHERE entry=184956;
UPDATE `gameobject_template` SET `ScriptName` = "go_thunderspike" WHERE `entry` = 184729;
UPDATE `gameobject_template` SET `flags` = 16,`ScriptName` = 'go_simon_cluster' WHERE `displayId` IN (7364,7365,7366,7367,7369,7371,7373,7375);
UPDATE `gameobject_template` SET `ScriptName` = 'go_apexis_relic' WHERE `entry` = 185890;
UPDATE `gameobject_template` SET `ScriptName` = 'go_corkis_prison' WHERE `entry` IN (182349,182350,182521);
UPDATE `gameobject_template` SET `ScriptName`='go_warmaul_prison' WHERE `entry` IN (182484,182486,182487,182488,182489,182490,182491,182492,182493,182494,182495,182496,182497,182498,182499,182501,182502,182503,182504);
UPDATE `gameobject_template` SET `ScriptName`='go_captain_tyralius_prison' WHERE `entry`=184588;
UPDATE `gameobject_template` SET `ScriptName`='go_razorscale_harpoon' WHERE `entry` IN (194519,194541,194542,194543);
UPDATE `gameobject_template` SET `ScriptName`='go_celestial_planetarium_access' WHERE `entry` IN (194628,194752); 
UPDATE `gameobject_template` SET `ScriptName`= 'go_wg_vehicle_teleporter' WHERE `entry`=192951;