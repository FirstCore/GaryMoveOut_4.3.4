-- Fix erreur consol Creature_template
UPDATE `creature_template` SET `unit_class` = '2' WHERE `entry` IN (37564,37605,48677,49262,48710,39680,48776,39983,39991,40018,48744,48753,48784,57508,49072,49077,57500,49057,49048,49665,49664,49508,50131,48951,49043,49615,49612,43876,43879,46212,46215,46221,51088,49328,49744,48589,33729,33737,22581,22584,22582,22585,22586,37239,32055,50113,50108,50105,45913,45918,45927,50293,50292,50296,50295,50288,49827,49828,49829,49830,50285,49310);
UPDATE `creature_template` SET `unit_class` = '8' WHERE `entry` IN (45936,37603,48746,48653);
UPDATE `creature_template` SET `unit_class` = '1' WHERE `entry` IN (33828,33832,38479);
UPDATE `creature_template` SET `unit_class` = '4' WHERE `entry` IN (33831,35436,35417,36358,38078,48815,48715,49053,49050);

UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` IN (48940,48804,48803,48936,35421,38157,48913,22654,22646,22651,22652,22660,22655,22644,22658,22648,31962,31935,31937,37310,22577,32795,31749);

UPDATE `creature_template` SET `equipment_id` = '0' WHERE `entry` IN (46096,99002,11444,39815,41105);
UPDATE `creature_template` SET `equipment_id` = '35551' WHERE `entry` = 36140;

DELETE FROM `creature_template` WHERE `entry` IN (56074,56075,56076,56079);

UPDATE `creature_template` SET `Modelid1` = '34472', `Modelid2` = '34473', `Modelid3` = '34474', `Modelid4` = '34475' WHERE `entry` = 59000;
UPDATE `creature_template` SET `Modelid1` = '14973', `Modelid2` = '14974', `Modelid3` = '14975', `Modelid4` = '14976' WHERE `entry` = 24529;
UPDATE `creature_template` SET `Modelid1` = '39531' WHERE `entry` = 56072;
UPDATE `creature_template` SET `Modelid1` = '16313' WHERE `entry` = 56073;
UPDATE `creature_template` SET `Modelid1` = '11686' WHERE `entry` = 56077;
UPDATE `creature_template` SET `Modelid1` = '39297' WHERE `entry` = 56078;
UPDATE `creature_template` SET `Modelid1` = '39299' WHERE `entry` = 56080;

UPDATE `creature_template` SET `faction_A` = '47' WHERE `entry` = 39155;

UPDATE `creature_template` SET `MovementType` = '0' WHERE `entry` = 42347;

UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (42698,479010,46209,48832);

UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (49708,48973,57547,57510);

UPDATE `creature_template` SET `PetSpellDataId` = '0' WHERE `entry` IN (46507,46508,56051);

UPDATE `creature_template` SET `difficulty_entry_1` = '0' WHERE `entry` IN (634,98781,12159,30405,3927,4279,3886,48791);

UPDATE `creature_template` SET `Spell2` = '11972' WHERE `entry` IN (3739,1540);
UPDATE `creature_template` SET `Spell1` = '33627' WHERE `entry` = 18945;
