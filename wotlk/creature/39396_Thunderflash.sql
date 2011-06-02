SET @NPC = 39396;
SET @GOSSIP = 11211;

UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 1, `speed_walk` = 3, `speed_run` = 3, `VehicleId` = 0, `InhabitType` = 4, `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `gossip_scripts` WHERE `id` = @GOSSIP;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 'Get in the Flying Machine.', 1, 1);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `option_text_loc8`) VALUES
(@GOSSIP, 'Забраться в ветролет.');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = @GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, @GOSSIP, 0, 0, 9, 25212, 0, 0, 0, '', NULL);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC, 0, 1, 62, @GOSSIP, 85, 73896, 7, 'Invoker self cast'),
(@NPC, 1, 0, 61, 0, 72, 0, 7, 'Close gossip');