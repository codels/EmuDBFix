UPDATE `creature_template` SET
	`AIName` = 'SmartAI'
WHERE `entry` = 116;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 116;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 116 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`) VALUES
(116, 4000, 4000, 15000, 20000, 11, 8646, 2);