ALTER TABLE `creature_onkill_reputation`
	ADD `CurrencyId1` smallint(6) unsigned NOT NULL DEFAULT '0',
	ADD `CurrencyId2` smallint(6) unsigned NOT NULL DEFAULT '0',
	ADD `CurrencyId3` smallint(6) unsigned NOT NULL DEFAULT '0',
	ADD `CurrencyCount1` mediumint(9) NOT NULL DEFAULT '0',
	ADD `CurrencyCount2` mediumint(9) NOT NULL DEFAULT '0',
	ADD `CurrencyCount3` mediumint(9) NOT NULL DEFAULT '0';