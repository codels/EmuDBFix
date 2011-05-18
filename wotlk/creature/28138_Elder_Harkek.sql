UPDATE `creature_template` SET
        `gossip_menu_id` = 9741,
        `npcflag` = 3
WHERE `entry` = 28138;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9741;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`,
`npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`,
`box_money`, `box_text`) VALUES 
(9741, 0, 0, 'I need to find Dajik, you have to chalk?', 1, 1, 0, 0, 28138, 0, 0, NULL),
(9741, 1, 0, 'I need to find Dajik, you have to chalk?', 1, 1, 0, 0, 28138, 0, 0, NULL),
(9741, 2, 0, 'I need to find Goregek, you have to shackles?', 1, 1, 0, 0, 28139, 0, 0, NULL),
(9741, 3, 0, 'I need to find Zepik, you have to Hunting Horn?', 1, 1, 0, 0, 28140, 0, 0, NULL);

DELETE FROM `gossip_scripts` WHERE `id` IN (28138, 28139, 28140);
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(28138, 0, 15, 52544, 1, 0, 0, 0, 0, 0),
(28139, 0, 15, 52542, 1, 0, 0, 0, 0, 0),
(28140, 0, 15, 52545, 1, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 9741;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`,
`ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`,
`ScriptName`, `Comment`) VALUES 
(15, 9741, 0, 0, 9, 12533, 0, 0, 0, '', NULL),
(15, 9741, 1, 0, 9, 12531, 0, 0, 0, '', NULL),
(15, 9741, 2, 0, 9, 12529, 0, 0, 0, '', NULL),
(15, 9741, 3, 0, 9, 12536, 0, 0, 0, '', NULL);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9741;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`,
`option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`,
`box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(9741, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужно найти Дажика, у тебя есть его мел?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9741, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужно найти Дажика, у тебя есть его мел?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9741, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужно найти Горегека, у тебя есть его кандалы?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9741, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужно найти Зепика, у тебя есть его охотничий рог?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);