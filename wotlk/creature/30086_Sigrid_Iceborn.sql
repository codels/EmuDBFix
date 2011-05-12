UPDATE `creature_template` SET
        `npcflag` = 1,
        `unit_flags` = 256,
        `gossip_menu_id` = 9870,
        `AIName` = 'SmartAI'
WHERE `entry` = 30086;

DELETE FROM `gossip_menu` WHERE `entry` = 9870;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (9870, 13678);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9870;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`,
`action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(9870, 0, 0, 'I\'ve heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try.', 1, 1, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_text` WHERE `entry` = 30086;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`,
`comment`) VALUES
(30086, 0, 0, 'Taste my steel, little girl!', 0, 0, 0, 0, 0, 0, ''),
(30086, 1, 0, 'You fight well, little one. I am bested for now. We will meet again I assure you. When we do I will be better prepared!', 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30086 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`,
`action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`,
`target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30086, 0, 0, 1, 62, 0, 100, 0, 9870, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 2, 3, 2, 1, 100, 0, 0, 15, 0, 0, 33, 30086, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 3, 4, 61, 1, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 4, 0, 61, 1, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 5, 0, 0, 2, 100, 0, 500, 500, 1000, 1000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 6, 0, 4, 1, 100, 0, 0, 0, 0, 0, 11, 61165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 7, 10, 9, 1, 100, 0, 0, 3, 5000, 8000, 21, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 8, 9, 9, 1, 100, 0, 5, 30, 1600, 2000, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 9, 0, 61, 1, 100, 0, 0, 0, 0, 0, 11, 61168, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 10, 0, 61, 1, 100, 0, 0, 0, 0, 0, 11, 61164, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 11, 0, 9, 1, 100, 0, 31, 100, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 12, 0, 4, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 13, 0, 7, 0, 100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30086, 0, 14, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');