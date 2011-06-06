SET @GO = 185928;
SET @GOSSIP = 8687;
SET @EVENT = 15014;

UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = @GO;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 0, 0, '<Call forth Terrok.>', 1, 1);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`) VALUES
(@GOSSIP, 0, '<Призвать Терокка.>');

DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP, 11058);

DELETE FROM `gossip_scripts` WHERE `id` = 50123;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @GO AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GO, 1, 0, 1, 62, 0, 100, 0, @GOSSIP, 0, 0, 0, 85, 41004, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@GO, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip');

DELETE FROM `event_scripts` WHERE `id` = @EVENT;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(@EVENT, 2, 10, 21838, 180000, 0, -3789.4, 3507.63, 286.982, 0);