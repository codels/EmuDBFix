DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(4461, 0, 11, 'Yes. I do.', 16, 16, 0, 0, 0, 0, 0, NULL);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`,
`option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`,
`option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`,
`box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(4461, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `gossip_menu` WHERE `entry` = 4461;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4461, 5673);

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

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10371;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`,
`npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`,
`box_money`, `box_text`) VALUES
(10371, 0, 0, 'Purchase a Dual Talent Specialization.', 18, 16, 0, 0, 0, 0, 100000,
'Are you sure you wish to purchase a Dual Talent Specialization?');

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10371;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`,
`option_text_loc3`, `option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`,
`option_text_loc8`, `box_text_loc1`, `box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`,
`box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(10371, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
'Купить двойную специализацию талантов.', NULL, NULL, NULL, NULL, NULL, NULL, NULL,
'Вы уверены что хотите купить двойную специализацию талантов?');

DELETE FROM `gossip_menu` WHERE `entry` = 10371;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(10371, 14391);

DELETE FROM `locales_npc_text` WHERE `entry` = 14391;
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc1`, `Text0_0_loc2`, `Text0_0_loc3`,
`Text0_0_loc4`, `Text0_0_loc5`, `Text0_0_loc6`, `Text0_0_loc7`, `Text0_0_loc8`, `Text0_1_loc1`,
`Text0_1_loc2`, `Text0_1_loc3`, `Text0_1_loc4`, `Text0_1_loc5`, `Text0_1_loc6`, `Text0_1_loc7`,
`Text0_1_loc8`, `Text1_0_loc1`, `Text1_0_loc2`, `Text1_0_loc3`, `Text1_0_loc4`, `Text1_0_loc5`,
`Text1_0_loc6`, `Text1_0_loc7`, `Text1_0_loc8`, `Text1_1_loc1`, `Text1_1_loc2`, `Text1_1_loc3`,
`Text1_1_loc4`, `Text1_1_loc5`, `Text1_1_loc6`, `Text1_1_loc7`, `Text1_1_loc8`, `Text2_0_loc1`,
`Text2_0_loc2`, `Text2_0_loc3`, `Text2_0_loc4`, `Text2_0_loc5`, `Text2_0_loc6`, `Text2_0_loc7`,
`Text2_0_loc8`, `Text2_1_loc1`, `Text2_1_loc2`, `Text2_1_loc3`, `Text2_1_loc4`, `Text2_1_loc5`,
`Text2_1_loc6`, `Text2_1_loc7`, `Text2_1_loc8`, `Text3_0_loc1`, `Text3_0_loc2`, `Text3_0_loc3`,
`Text3_0_loc4`, `Text3_0_loc5`, `Text3_0_loc6`, `Text3_0_loc7`, `Text3_0_loc8`, `Text3_1_loc1`,
`Text3_1_loc2`, `Text3_1_loc3`, `Text3_1_loc4`, `Text3_1_loc5`, `Text3_1_loc6`, `Text3_1_loc7`,
`Text3_1_loc8`, `Text4_0_loc1`, `Text4_0_loc2`, `Text4_0_loc3`, `Text4_0_loc4`, `Text4_0_loc5`,
`Text4_0_loc6`, `Text4_0_loc7`, `Text4_0_loc8`, `Text4_1_loc1`, `Text4_1_loc2`, `Text4_1_loc3`,
`Text4_1_loc4`, `Text4_1_loc5`, `Text4_1_loc6`, `Text4_1_loc7`, `Text4_1_loc8`, `Text5_0_loc1`,
`Text5_0_loc2`, `Text5_0_loc3`, `Text5_0_loc4`, `Text5_0_loc5`, `Text5_0_loc6`, `Text5_0_loc7`,
`Text5_0_loc8`, `Text5_1_loc1`, `Text5_1_loc2`, `Text5_1_loc3`, `Text5_1_loc4`, `Text5_1_loc5`,
`Text5_1_loc6`, `Text5_1_loc7`, `Text5_1_loc8`, `Text6_0_loc1`, `Text6_0_loc2`, `Text6_0_loc3`,
`Text6_0_loc4`, `Text6_0_loc5`, `Text6_0_loc6`, `Text6_0_loc7`, `Text6_0_loc8`, `Text6_1_loc1`,
`Text6_1_loc2`, `Text6_1_loc3`, `Text6_1_loc4`, `Text6_1_loc5`, `Text6_1_loc6`, `Text6_1_loc7`,
`Text6_1_loc8`, `Text7_0_loc1`, `Text7_0_loc2`, `Text7_0_loc3`, `Text7_0_loc4`, `Text7_0_loc5`,
`Text7_0_loc6`, `Text7_0_loc7`, `Text7_0_loc8`, `Text7_1_loc1`, `Text7_1_loc2`, `Text7_1_loc3`,
`Text7_1_loc4`, `Text7_1_loc5`, `Text7_1_loc6`, `Text7_1_loc7`, `Text7_1_loc8`) VALUES
(14391, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.',
NULL, NULL, NULL, NULL, NULL, NULL, NULL,
'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.',
NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL,
NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL,
NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL,
NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL,
NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL,
NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL,
NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');


UPDATE `locales_gossip_menu_option` SET `option_text_loc8` = 'Я хочу узнать больше об учении Света.' WHERE `menu_id` = 6647 AND `id` = 0;
UPDATE `locales_gossip_menu_option` SET `option_text_loc8` = 'Я хочу забыть свои таланты.' WHERE `menu_id` = 6647 AND `id` = 1;
UPDATE `locales_gossip_menu_option` SET `option_text_loc8` = 'Я хочу расспросить о двойной специализации.' WHERE `menu_id` = 6647 AND `id` = 2;
UPDATE `locales_gossip_menu_option` SET `option_text_loc8` = 'Да. Я желаю.' WHERE `menu_id` = 4461 AND `id` = 0;
UPDATE `script_texts` SET `content_loc8` = 'Что? Этого не может быть!' WHERE `entry` = -1595091;