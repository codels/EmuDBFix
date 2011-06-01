SET @GOSSIP_RESET_TALENTS = 4461;
SET @GOSSIP_DUAL_SPEC = 10371;
SET @GOSSIP_PALADIN_TRAINER = 6647;

-- gossip reset talents
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_RESET_TALENTS;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (@GOSSIP_RESET_TALENTS, 0, 11, 'Yes. I do.', 16, 16);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = @GOSSIP_RESET_TALENTS;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES (@GOSSIP_RESET_TALENTS, 0, 'Да. Так.');
DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP_RESET_TALENTS;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP_RESET_TALENTS, 5673);

-- gossip trainer paladin
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(@GOSSIP_PALADIN_TRAINER, 0, 2, 'I would like to train further in the ways of the Light.', 5, 16, 0),
(@GOSSIP_PALADIN_TRAINER, 1, 0, 'I wish to unlearn my talents.', 1, 16, @GOSSIP_RESET_TALENTS),
(@GOSSIP_PALADIN_TRAINER, 2, 0, 'Purchase a Dual Talent Specialization', 1, 16, @GOSSIP_DUAL_SPEC);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = @GOSSIP_PALADIN_TRAINER;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES
(@GOSSIP_PALADIN_TRAINER, 0, 'Я хочу узнать больше об учении Света.'),
(@GOSSIP_PALADIN_TRAINER, 1, 'Я хочу забыть свои таланты.'),
(@GOSSIP_PALADIN_TRAINER, 2, 'Я хочу расспросить о двойной специализации.');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 6647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_PALADIN_TRAINER, 1, 0, 27, 10, 1, 0, 0, '', 'Need 10 level for reset talents.'),
(15, @GOSSIP_PALADIN_TRAINER, 2, 0, 27, 40, 1, 0, 0, '', 'Need 40 level for dual spec.'),
(15, @GOSSIP_PALADIN_TRAINER, 2, 0, 25, 63644, 0, 0, 0, '', NULL);

-- gossip dual spec
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_DUAL_SPEC;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `box_money`, `box_text`) VALUES
(@GOSSIP_DUAL_SPEC, 0, 0, 'Purchase a Dual Talent Specialization.', 18, 16, 10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?');
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10371;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`, `box_text_loc8`) VALUES
(@GOSSIP_DUAL_SPEC, 0, 'Купить двойную специализацию талантов.', 'Вы уверены что хотите купить двойную специализацию талантов?');
DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP_DUAL_SPEC;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP_DUAL_SPEC, 14391);
DELETE FROM `locales_npc_text` WHERE `entry` = 14391;
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc8`, `Text0_1_loc8`) VALUES
(14391, 'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.',
'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.');

-- russian text for script
UPDATE `script_texts` SET `content_loc8` = 'Что? Этого не может быть!' WHERE `entry` = -1595091;

DELETE FROM `creature_ai_texts` WHERE `entry` = -47;
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-47, '%s attempts to run away in fear!', '% бежит прочь в страхе!', 0, 2, 0, 0, 'Common Text');