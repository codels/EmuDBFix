/*#####################################
####     Servant of the Throne
#####################################*/

SET @NPC = 36724;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3500, 5000, 6500, 9000, 11, 71029, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Glacial Blast'),
(@NPC, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 71203, 3, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, 'Cast Soul Feast when death');

/*#####################################
####     Lord Marrowgar
#####################################*/

-- 10N
UPDATE `creature_template` SET `dmg_multiplier` = 75, `baseattacktime` = 1500 WHERE `entry` = 36612;
-- 25N
UPDATE `creature_template` SET `dmg_multiplier` = 95, `baseattacktime` = 1500 WHERE `entry` = 37957;
-- 10H
UPDATE `creature_template` SET `dmg_multiplier` = 85, `baseattacktime` = 1500 WHERE `entry` = 37958;
-- 25H
UPDATE `creature_template` SET `dmg_multiplier` = 105, `baseattacktime` = 1500 WHERE `entry` = 37959;