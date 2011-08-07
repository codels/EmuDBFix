SET @NPC = 99;

DELETE FROM `creature_loot_template` WHERE entry = @NPC;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(@NPC, 768, 1, 2, 1, 1, 0, 0, 0),
(@NPC, 1917, 0, 2, 1, 1, 0, 0, 0),
(@NPC, 2070, 10, 0, 1, 1, 0, 0, 0),
(@NPC, 2589, 30, 0, 1, 2, 0, 0, 0),
(@NPC, 2774, 1, 2, 1, 1, 0, 0, 0),
(@NPC, 4563, 1, 2, 1, 1, 0, 0, 0),
(@NPC, 6201, 100, 0, 1, 1, 0, 0, 0),
(@NPC, 6267, 0, 2, 1, 1, 0, 0, 0),
(@NPC, 6269, 0, 2, 1, 1, 0, 0, 0),
(@NPC, 6337, 0, 2, 1, 1, 0, 0, 0),
(@NPC, 8181, 1, 2, 1, 1, 0, 0, 0),
(@NPC, 24073, 5, 1, -24073, 1, 0, 0, 0),
(@NPC, 24074, 1, 1, -24074, 1, 0, 0, 0),
(@NPC, 24075, 1, 1, -24075, 1, 0, 0, 0);