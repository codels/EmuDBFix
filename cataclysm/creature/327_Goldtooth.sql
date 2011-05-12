-- fix loot item for cataclysm
DROP FROM `creature_loot_template` WHERE `entry` = 327 AND `item` = 981;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`,
`groupid`, `mincountOrRef`, `maxcount`) VALUES
(327, 981, -100, 1, 0, 1, 1);