SET @NPC = 33518;
SET @GOSSIP = 10343;

UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`,
`action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(@GOSSIP, 1, 0, 'I am ready to fight!', 1, 1, 0, 0, 0, 0, 0, NULL),
(@GOSSIP, 2, 0, 'I am ready to fight!', 1, 1, 0, 0, 0, 0, 0, NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @GOSSIP, 1, 0, 9, 13726, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 0, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 1, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 1, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 1, 9, 13727, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 2, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 2, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 2, 9, 13728, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 3, 9, 13731, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 3, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 3, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 4, 9, 13729, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 4, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 1, 4, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 0, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 0, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 0, 9, 13725, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 1, 9, 13724, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 1, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 1, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 2, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 2, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 2, 9, 13723, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 3, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 3, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 3, 9, 13699, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 4, 3, 46069, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 4, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 2, 4, 9, 13713, 0, 0, 0, '', NULL);


DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 12, 30188, 1, 120000, 0, 0, 0, 8, 0, 0, 0, 8541.93, 1112.28, 556.788, 0.187584, 'Squire Danny - Summon Argent Champion (30188)'),
(@NPC, 0, 1, 0, 62, 0, 100, 0, @GOSSIP, 2, 0, 0, 12, 30675, 1, 120000, 0, 0, 0, 8, 0, 0, 0, 8541.93, 1112.28, 556.788, 0.187584, 'Squire Danny - Summon Argent Champion (30675)');