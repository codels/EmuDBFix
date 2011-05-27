-- gossip reset talents
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (4461, 0, 11, 'Yes. I do.', 16, 16);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4461;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES (4461, 0, 'Да. Так.');
DELETE FROM `gossip_menu` WHERE `entry` = 4461;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (4461, 5673);

-- gossip trainer paladin
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(6647, 0, 2, 'I would like to train further in the ways of the Light.', 5, 16, 0),
(6647, 1, 0, 'I wish to unlearn my talents.', 1, 16, 4461),
(6647, 2, 0, 'Purchase a Dual Talent Specialization', 1, 16, 10371);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES
(6647, 0, 'Я хочу узнать больше об учении Света.'),
(6647, 1, 'Я хочу забыть свои таланты.'),
(6647, 2, 'Я хочу расспросить о двойной специализации.');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 6647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 6647, 1, 0, 27, 10, 1, 0, 0, '', NULL),
(15, 6647, 2, 0, 27, 40, 1, 0, 0, '', NULL),
(15, 6647, 2, 0, 25, 63644, 0, 0, 0, '', NULL);

-- gossip dual spec
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10371;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `box_money`, `box_text`) VALUES
(10371, 0, 0, 'Purchase a Dual Talent Specialization.', 18, 16, 10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?');
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10371;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`, `box_text_loc8`) VALUES
(10371, 0, 'Купить двойную специализацию талантов.', 'Вы уверены что хотите купить двойную специализацию талантов?');
DELETE FROM `gossip_menu` WHERE `entry` = 10371;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (10371, 14391);
DELETE FROM `locales_npc_text` WHERE `entry` = 14391;
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc8`, `Text0_1_loc8`) VALUES
(14391, 'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.',
'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.');

-- russian text for script
UPDATE `script_texts` SET `content_loc8` = 'Что? Этого не может быть!' WHERE `entry` = -1595091;