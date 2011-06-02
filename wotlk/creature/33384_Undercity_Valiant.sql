SET @NPC = 33384;
SET @GOSSIP = 10473;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `AIName` = 'SmartAI', `questItem1` = 45127 WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `gossip_scripts` WHERE `id` = @GOSSIP;
DELETE FROM `db_script_string` WHERE `entry` = 2000000449;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 'I am ready to fight!', 1, 1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP, 0, 0, 1, 62853, 0, 0, 0, '', NULL),
(15, @GOSSIP, 0, 0, 6, 67, 0, 0, 0, '', NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_phase_mask`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES 
(@NPC, 0, 1, 62, 0, 0, @GOSSIP, 0, 0, 0, 2, 14, 0, 1, ''),
(@NPC, 1, 7, 61, 0, 0, 0, 0, 0, 0, 19, 2, 1, 1, ''),
(@NPC, 2, 3, 7, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, ''),
(@NPC, 3, 0, 61, 0, 0, 0, 0, 0, 0, 18, 2, 1, 1, ''),
(@NPC, 5, 6, 2, 0, 0, 0, 10, 500, 500, 85, 62724, 0, 1, ''),
(@NPC, 6, 0, 61, 0, 0, 0, 0, 0, 0, 22, 1, 0, 1, ''),
(@NPC, 7, 0, 61, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, ''),
(@NPC, 8, 0, 0, 1, 0, 100, 100, 100, 100, 24, 0, 0, 1, '');

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `text`) VALUES
(@NPC, 'I yield to you.');