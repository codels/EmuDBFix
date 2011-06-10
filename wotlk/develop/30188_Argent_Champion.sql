UPDATE `creature_template` SET `faction_A` = 2131, `faction_H` = 2131 WHERE `entry` = 30188;
DELETE FROM `creature_template_addon` WHERE `entry` = 30188;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes2`) VALUES (30188, 28919, 1);