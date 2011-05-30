UPDATE `creature_template` SET
        `AIName` = 'SmartAI'
WHERE `entry` = 832;

DELETE FROM `creature_template_addon` WHERE `entry` = 832;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 832;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 832 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`) VALUES
(832, 10, 2, 500, 500, 85, 76080, 2, 1);