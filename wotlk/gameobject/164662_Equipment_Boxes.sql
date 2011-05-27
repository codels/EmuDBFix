-- 164662 ytdb loot
UPDATE `gameobject_template` SET
	`data1` = 10984
WHERE `entry` = 164662;

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (164662, 10984);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(10984, 11127, -100, 1, 0, 1, 1);