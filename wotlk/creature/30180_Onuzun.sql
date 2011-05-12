UPDATE `creature_template` SET
        `gossip_menu_id` = 9878,
        `npcflag` = 1,
        `unit_flags` = 256,
        `AIName` = 'SmartAI'
WHERE `entry` = 30180;

DELETE FROM `gossip_menu` WHERE `entry` = 9878;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (9878, 13701);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9878;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`,
`action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(9878, 0, 0, 'I have bad news for you Onu\'zun: I\'m gonna have to cut short your dreams!', 1, 1, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_text` WHERE `entry` = 30180;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`,
`sound`, `comment`) VALUES
(30180, 0, 0, 'Onu\'zun gonna kill you dead!', 0, 0, 0, 0, 0, 0, ''),
(30180, 1, 0, 'Onu\'zun is defeated by the ugliest person ever!', 0, 0, 0, 0, 0, 0, ''),
(30180, 2, 0, 'Onu\'zun go now. You\'ll miss me.', 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30180 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`,
`action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`,
`target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30180, 0, 0, 1, 62, 0, 100, 0, 9878, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 3, 0, 7, 0, 100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 4, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 5, 6, 2, 5, 100, 0, 0, 15, 0, 0, 33, 30180, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 6, 7, 61, 5, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 7, 0, 61, 5, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 8, 0, 0, 2, 100, 0, 500, 500, 1000, 1000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 9, 0, 13, 1, 100, 0, 9000, 11000, 0, 0, 11, 15122, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 11, 18100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 12, 14, 9, 4, 100, 0, 0, 30, 1000, 1000, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 13, 15, 9, 1, 100, 0, 30, 100, 1000, 1000, 22, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 14, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 15, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 16, 0, 9, 1, 100, 0, 0, 5, 8000, 9000, 11, 29717, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 17, 0, 0, 1, 100, 0, 1000, 1200, 2600, 2700, 11, 54096, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(30180, 0, 18, 0, 7, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');