-- spell 71203 - in kernel.

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
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3500, 5000, 6500, 9000, 11, 71029, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Servant of the Throne - Cast Glacial Blast');

/*#####################################
####    Nerub'ar Broodkeeper
#####################################*/

SET @NPC = 36725;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 14, 0, 100, 0, 50000, 39, 7500, 10000, 11, 71020, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Dark Mending'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 5500, 7000, 10000, 15000, 11, 70980, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Web Wrap'),
(@NPC, 0, 2, 0, 0, 0, 100, 0, 100, 1000, 2100, 2300, 11, 70965, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Crypt Scarabs');

/*#####################################
####     Deathspeaker Servant
#####################################*/

SET @NPC = 36805;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 2500, 4000, 7500, 15000, 11, 69405, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Consuming Shadows'),
(@NPC, 0, 1, 0, 0, 0, 100, 10, 500, 3000, 7500, 10000, 11, 69404, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Curse of Agony'),
(@NPC, 0, 2, 0, 0, 0, 100, 10, 1500, 2000, 2600, 2700, 11, 69576, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Chaos Bolt'),
(@NPC, 0, 3, 0, 0, 0, 100, 20, 500, 3000, 5000, 75000, 11, 71112, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Curse of Agony'),
(@NPC, 0, 4, 0, 0, 0, 100, 20, 1500, 2000, 2600, 2700, 11, 71108, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Chaos Bolt');

/*#####################################
####     Deathspeaker Zealot
#####################################*/

SET @NPC = 36808;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 1500, 3000, 6000, 6500, 11, 69492, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Zealot - Cast Shadow Cleave');

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
(@NPC, 0, 0, 0, 0, 0, 100, 0, 6500, 7000, 15000, 20000, 11, 71022, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Disrupting Shout'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 2000, 3500, 11, 71021, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Saber Lash');

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
(@NPC, 0, 1, 0, 2, 0, 100, 0, 5, 30, 15000, 20000, 75, 70960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Bone Flurry at 5-30%');

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
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 7500, 10000, 11, 70964, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ancient Skeletal Soldier - Cast Shield Bash');

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