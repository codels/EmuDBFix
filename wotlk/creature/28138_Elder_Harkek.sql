SET @NPC = 28138;
SET @GOSSIP = 9741;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 3, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES 
(@GOSSIP, 0, 0, 'I need to find Dajik, you have to chalk?', 1, 1),
(@GOSSIP, 1, 0, 'I need to find Dajik, you have to chalk?', 1, 1),
(@GOSSIP, 2, 0, 'I need to find Goregek, you have to shackles?', 1, 1),
(@GOSSIP, 3, 0, 'I need to find Zepik, you have to Hunting Horn?', 1, 1);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES
(@GOSSIP, 0, 'Мне нужно найти Дажика, у тебя есть его мел?'),
(@GOSSIP, 1, 'Мне нужно найти Дажика, у тебя есть его мел?'),
(@GOSSIP, 2, 'Мне нужно найти Горегека, у тебя есть его кандалы?'),
(@GOSSIP, 3, 'Мне нужно найти Зепика, у тебя есть его охотничий рог?');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @GOSSIP, 0, 0, 9, 12533, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 0, 9, 12531, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 0, 9, 12529, 0, 0, 0, '', NULL),
(15, @GOSSIP, 3, 0, 9, 12536, 0, 0, 0, '', NULL);

DELETE FROM `gossip_scripts` WHERE `id` IN (28138, 28139, 28140);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC, 0, 4, 62, @GOSSIP, 0, 0, 0, 85, 52544, 7, 'Invoker self cast'),
(@NPC, 1, 4, 62, @GOSSIP, 1, 0, 0, 85, 52544, 7, 'Invoker self cast'),
(@NPC, 2, 4, 62, @GOSSIP, 2, 0, 0, 85, 52542, 7, 'Invoker self cast'),
(@NPC, 3, 4, 62, @GOSSIP, 3, 0, 0, 85, 52545, 7, 'Invoker self cast'),
(@NPC, 4, 0, 61, 0, 0, 0, 0, 72, 0, 7, 'Close gossip');