SET @NPC = 29709;
UPDATE `creature_template` SET `speed_walk` = 4, `speed_run` = 4, `AIName` = 'SmartAI', `InhabitType` = 4, `spell1` = 55046 WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES 
(@NPC, 27, 60, 1, 1, 'Set animation fly when passenger boarded');