UPDATE `creature_template` SET
        `speed_walk` = 4,
        `speed_run` = 4,
        `AIName` = 'SmartAI',
        `InhabitType` = 4,
        `spell1` = 55046
WHERE `entry` = 29709;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 29709;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`,
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`,
`target_o`, `comment`) VALUES 
(29709, 0, 0, 1, 27, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(29709, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(29709, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 11, 45472, 3, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, '');