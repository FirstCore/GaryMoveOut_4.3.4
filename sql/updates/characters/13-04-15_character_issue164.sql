--
-- Reinitialisation Des quete est faction suite au debugg issue 164

DELETE FROM `character_reputation` WHERE `faction` = 1015;
DELETE FROM `character_queststatus_rewarded` WHERE `quest` IN (10804,10811,10814,10836,10837,10854,10858,10866,10870,11013,11014,11016,11018,11017,11015,11020,11035,11049,11053,11075,11083,11081,11082,11054,11055,11084,11086,11089,11090,11063,11064,11067,11068,11069,11071,11092,11094,11097,11099,11101,11107,11108);
