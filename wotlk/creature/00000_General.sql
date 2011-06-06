SET @GOSSIP_RESET_TALENTS = 4461;
SET @GOSSIP_DUAL_SPEC = 10371;
SET @GOSSIP_PALADIN_TRAINER = 6647;

-- gossip reset talents
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_RESET_TALENTS;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES (@GOSSIP_RESET_TALENTS, 0, 11, 'Yes. I do.', 16, 16);
DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP_RESET_TALENTS;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP_RESET_TALENTS, 5673);

-- gossip trainer paladin
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6647;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
(@GOSSIP_PALADIN_TRAINER, 0, 2, 'I would like to train further in the ways of the Light.', 5, 16, 0),
(@GOSSIP_PALADIN_TRAINER, 1, 0, 'I wish to unlearn my talents.', 1, 16, @GOSSIP_RESET_TALENTS),
(@GOSSIP_PALADIN_TRAINER, 2, 0, 'Purchase a Dual Talent Specialization', 1, 16, @GOSSIP_DUAL_SPEC);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 6647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP_PALADIN_TRAINER, 1, 0, 27, 10, 1, 0, 0, '', 'Need 10 level for reset talents.'),
(15, @GOSSIP_PALADIN_TRAINER, 2, 0, 27, 40, 1, 0, 0, '', 'Need 40 level for dual spec.'),
(15, @GOSSIP_PALADIN_TRAINER, 2, 0, 25, 63644, 0, 0, 0, '', NULL);

-- gossip dual spec
DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP_DUAL_SPEC;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `box_money`, `box_text`) VALUES
(@GOSSIP_DUAL_SPEC, 0, 0, 'Purchase a Dual Talent Specialization.', 18, 16, 10000000, 'Are you sure you wish to purchase a Dual Talent Specialization?');
DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP_DUAL_SPEC;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP_DUAL_SPEC, 14391);