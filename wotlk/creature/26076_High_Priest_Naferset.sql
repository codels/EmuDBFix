UPDATE `creature_template` SET
        `unit_flags` = '33555200',
        `AIName` = 'SmartAI',
        `ScriptName` = ''
WHERE `entry` = 26076;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26076;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 26076 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`,
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(26076, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 12, 25378, 5, 0, 0, 0, 0, 8, 0, 0, 0, 4105.23, 3751.03, 92.6617, 5.04829, 'summon'),
(26076, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 12, 25378, 5, 0, 0, 0, 0, 8, 0, 0, 0, 4124.37, 3739.89, 92.6754, 3.46963, 'summon'),
(26076, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 12, 25378, 5, 0, 0, 0, 0, 8, 0, 0, 0, 4116.73, 3721.41, 92.6626, 2.00172, 'summon'),
(26076, 0, 3, 0, 35, 2, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(26076, 0, 4, 0, 1, 2, 100, 0, 1000, 1000, 5000, 5000, 19, 33555200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(26076, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(26076, 0, 6, 0, 1, 2, 100, 0, 1000, 1000, 5000, 5000, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(26076, 0, 7, 0, 35, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE `entry` = 26076;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`,
`duration`, `sound`, `comment`) VALUES
(26076, 0, 0, 'What is the meaning of this? I have not yet finished my feast!', 1, 0, 100, 0, 0, 0, '');