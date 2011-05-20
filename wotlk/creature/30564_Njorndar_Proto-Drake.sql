UPDATE `creature_template` SET
        `npcflag` = 0,
        `speed_walk` = 2,
        `speed_run` = 3,
        `spell1` = 57493,
        `spell3` = 7769,
        `VehicleId` = 247,
        `AIName` = 'SmartAI'
WHERE `entry` = 30564;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 30564;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30564 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`,
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`,
`target_o`, `comment`) VALUES
(30564, 0, 0, 0, 27, 0, 100, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set fly animation'),
(30564, 0, 1, 0, 28, 0, 100, 0, 0, 0, 0, 0, 11, 45472, 3, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'parachute');
