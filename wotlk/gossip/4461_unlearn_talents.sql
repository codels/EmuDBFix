DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`,
`npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`,
`box_money`, `box_text`) VALUES
(4461, 0, 11, 'Yes. I do.', 16, 16, 0, 0, 0, 0, 0, NULL);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`,
`option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`,
`option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`,
`box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(4461, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Да. Я желаю.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `gossip_menu` WHERE `entry` = 4461;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4461, 5673);