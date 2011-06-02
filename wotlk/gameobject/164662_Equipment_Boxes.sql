SET @GO = 164662;
SET @LOOT = 10984;
UPDATE `gameobject_template` SET `data1` = @LOOT WHERE `entry` = @GO;

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@GO, @LOOT);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(@LOOT, 11127, -100);