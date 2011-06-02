SET @NPC_JANENE = 6272;
SET @NPC_BRIANNA = 6727;
SET @NPC_ALLISON = 6740;
SET @NPC_TRELAYNE = 6790;
SET @NPC_HEATHER = 8931;
SET @NPC_CHRISTINA = 24057;
SET @NPC_JENNIFER = 27066;

SET @GOSSIP = 342;

UPDATE `gossip_menu_option` SET `action_script_id` = 0 WHERE `menu_id` = @GOSSIP AND `id` = 1;
DELETE FROM `gossip_scripts` WHERE `id` = @GOSSIP * 10;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` IN (@NPC_JANENE, @NPC_BRIANNA, @NPC_ALLISON, @NPC_TRELAYNE, @NPC_HEATHER, @NPC_CHRISTINA, @NPC_JENNIFER);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_JANENE, @NPC_BRIANNA, @NPC_ALLISON, @NPC_TRELAYNE, @NPC_HEATHER, @NPC_CHRISTINA, @NPC_JENNIFER) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_JANENE, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_JANENE, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_BRIANNA, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_BRIANNA, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_ALLISON, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_ALLISON, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_TRELAYNE, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_TRELAYNE, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_HEATHER, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_HEATHER, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_CHRISTINA, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_CHRISTINA, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip'),
(@NPC_JENNIFER, 0, 0, 3, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 85, 24751, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@NPC_JENNIFER, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip');