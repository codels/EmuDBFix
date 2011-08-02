-- fix loot item for cataclysm
DROP FROM `creature_loot_template` WHERE `entry` = 330 AND `item` = 1006;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`,
`groupid`, `mincountOrRef`, `maxcount`) VALUES
(330, 1006, -100, 1, 0, 1, 1);