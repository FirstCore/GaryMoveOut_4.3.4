-- Suppression addon (crash client)
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 36943);
