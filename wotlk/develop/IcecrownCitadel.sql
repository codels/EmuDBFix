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
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3500, 5000, 6500, 9000, 11, 71029, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Servant of the Throne - Cast Glacial Blast'),
(@NPC, 0, 1, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 71203, 3, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, 'Servant of the Throne - Cast Soul Feast on death');

/*#####################################
####     Deathbound Ward
#####################################*/

SET @NPC = 37007;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 71203, 3, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Soul Feast on death'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 6500, 7000, 15000, 20000, 11, 71022, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Disrupting Shout'),
(@NPC, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 2000, 3500, 11, 71021, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Saber Lash');

/*#####################################
####     The Damned
#####################################*/

SET @NPC = 37011;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 70961, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Shattered Bones on death'),
(@NPC, 0, 1, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 71203, 3, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Soul Feast on death'),
(@NPC, 0, 2, 0, 2, 0, 100, 0, 5, 30, 15000, 20000, 75, 70960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Bone Flurry at 5-30%');

/*#####################################
####    Ancient Skeletal Soldier
#####################################*/

SET @NPC = 37012;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 71203, 3, 0, 0, 0, 0, 18, 45, 0, 0, 0, 0, 0, 0, 'Ancient Skeletal Soldier - Cast Soul Feast on death'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 7500, 10000, 11, 70964, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ancient Skeletal Soldier - Cast Shield Bash');

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