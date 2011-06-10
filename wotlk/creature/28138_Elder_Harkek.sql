SET @NPC = 28138;
SET @GOSSIP = 9741;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 3, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES 
(@GOSSIP, 0, 0, 'I need to find Dajik, you have to chalk?', 1, 1),
(@GOSSIP, 1, 0, 'I need to find Dajik, you have to chalk?', 1, 1),
(@GOSSIP, 2, 0, 'I need to find Goregek, you have to shackles?', 1, 1),
(@GOSSIP, 3, 0, 'I need to find Zepik, you have to Hunting Horn?', 1, 1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @GOSSIP, 0, 0, 9, 12533, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 0, 9, 12531, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 0, 9, 12529, 0, 0, 0, '', NULL),
(15, @GOSSIP, 3, 0, 9, 12536, 0, 0, 0, '', NULL);

DELETE FROM `gossip_scripts` WHERE `id` IN (28138, 28139, 28140);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 4, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 85, 52544, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Player self cast'),
(@NPC, 0, 1, 4, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 52544, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Player self cast'),
(@NPC, 0, 2, 4, 62, 0, 100, 0, @GOSSIP, 2, 0, 0, 85, 52542, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Player self cast'),
(@NPC, 0, 3, 4, 62, 0, 100, 0, @GOSSIP, 3, 0, 0, 85, 52545, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Player self cast'),
(@NPC, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Close gossip'),
(@NPC, 0, 5, 6, 25, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Prevent Combat Movement on Reset'),
(@NPC, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Set Phase to 0 on Reset'),
(@NPC, 0, 7, 8, 4, 0, 100, 0, 0, 0, 0, 0, 11, 33643, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Cast Chain Lightning on Aggro'),
(@NPC, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Set Phase 1 on Aggro'),
(@NPC, 0, 9, 0, 9, 1, 100, 0, 0, 40, 6000, 9000, 11, 33643, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Cast Chain Lightning (Phase 1)'),
(@NPC, 0, 10, 10, 3, 1, 100, 0, 0, 0, 7, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Start Combat Movement when Mana is at 7% (Phase 1)'),
(@NPC, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Set Phase 2 when Mana is at 7% (Phase 1)'),
(@NPC, 0, 12, 0, 9, 1, 100, 0, 35, 80, 1000, 1000, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Start Combat Movement at 35 Yards (Phase 1)'),
(@NPC, 0, 13, 0, 9, 1, 100, 0, 5, 15, 1000, 1000, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Prevent Combat Movement at 15 Yards (Phase 1)'),
(@NPC, 0, 14, 0, 9, 1, 100, 0, 0, 5, 1000, 1000, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Start Combat Movement Below 5 Yards (Phase 1)'),
(@NPC, 0, 15, 0, 3, 2, 100, 0, 15, 100, 1000, 1000, 23, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Set Phase 1 when Mana is above 15% (Phase 2)'),
(@NPC, 0, 16, 0, 0, 0, 100, 0, 13000, 18000, 13000, 18000, 11, 52905, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Cast Thunderbolt'),
(@NPC, 0, 17, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Elder Harkek - Set Phase to 0 on Evade');