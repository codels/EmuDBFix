UPDATE `creature_template` SET
	`gossip_menu_id` = 9869,
	`npcflag` = 1,
	`AIName` = 'SmartAI'
WHERE `entry` = 30081;

DELETE FROM `gossip_menu` WHERE `entry` = 9869;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (9869, 13674);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9869;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`,
`action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(9869, 0, 0, 'I challenge you to a duel, Scarlet scum!', 1, 1, 0, 0, 0, 0, 0, NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30081 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`,
`action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`,
`target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30081, 0, 0, 1, 62, 0, 100, 0, 9869, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'gossip faction change on 14'),
(30081, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'say after gossip'),
(30081, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set phase 1 on aggro'),
(30081, 0, 3, 0, 0, 1, 100, 1, 1000, 10000, 10000, 10000, 11, 13005, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast spell "Hammer of Justice"'),
(30081, 0, 4, 0, 0, 1, 100, 0, 2000, 5000, 2000, 5000, 11, 14518, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast spell "Crusader Strike"'),
(30081, 0, 5, 0, 2, 1, 100, 1, 20, 50, 0, 0, 11, 17233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'cast spell "Lay on Hands"'),
(30081, 0, 6, 7, 2, 1, 100, 0, 0, 15, 0, 0, 33, 30081, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'kill credit on 15% hp'),
(30081, 0, 7, 8, 61, 1, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'say after kill credit'),
(30081, 0, 8, 0, 61, 1, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set phase 2 after say'),
(30081, 0, 9, 0, 0, 2, 100, 0, 500, 500, 1000, 1000, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'evade on phase2'),
(30081, 0, 10, 0, 7, 0, 100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'reset faction on evade'),
(30081, 0, 11, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set phase 1 on evade');

DELETE FROM `creature_text` WHERE `entry` = 30081;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`,
`comment`) VALUES
(30081, 0, 0, 'You dare to touch ME? You won\'t keep me from proving myself to the Lich King!', 0, 0, 0, 0, 0, 0, ''),
(30081, 1, 0, 'Wait, wait... I surrender! Please, no more! I\'ll leave!', 0, 0, 0, 0, 0, 0, '');