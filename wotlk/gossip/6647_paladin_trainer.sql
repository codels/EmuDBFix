DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`,
`npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`,
`box_money`, `box_text`) VALUES
(6647, 0, 2, 'I would like to train further in the ways of the Light.', 5, 16, 0, 0, 0, 0, 0, NULL),
(6647, 1, 0, 'I wish to unlearn my talents.', 1, 16, 4461, 0, 0, 0, 0, NULL),
(6647, 2, 0, 'Purchase a Dual Talent Specialization', 1, 16, 10371, 0, 0, 0, 0, NULL);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`,
`option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`,
`option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`,
`box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(6647, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6647, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6647, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 6647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`,
`ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`,
`ScriptName`, `Comment`) VALUES
(15, 6647, 1, 0, 27, 10, 1, 0, 0, '', NULL),
(15, 6647, 2, 0, 27, 40, 1, 0, 0, '', NULL),
(15, 6647, 2, 0, 25, 63644, 0, 0, 0, '', NULL);