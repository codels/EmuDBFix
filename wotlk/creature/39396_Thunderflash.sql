UPDATE `creature_template` SET
        `gossip_menu_id` = 11211,
        `npcflag` = 1,
        `speed_walk` = 3,
        `speed_run` = 3,
        `VehicleId` = 0,
        `InhabitType` = 4,
        `AIName` = ''
WHERE `entry` = 39396;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 39396;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 39396 AND `source_type` = 0;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 11211;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`,
`action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(11211, 0, 0, 'Get in the Flying Machine.', 1, 1, 0, 0, 11211, 0, 0, NULL);

DELETE FROM `gossip_scripts` WHERE `id` = 11211;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(11211, 0, 15, 73896, 3, 0, 0, 0, 0, 0);

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 11211;
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc1`, `option_text_loc2`, `option_text_loc3`,
`option_text_loc4`, `option_text_loc5`, `option_text_loc6`, `option_text_loc7`, `option_text_loc8`, `box_text_loc1`,
`box_text_loc2`, `box_text_loc3`, `box_text_loc4`, `box_text_loc5`, `box_text_loc6`, `box_text_loc7`, `box_text_loc8`) VALUES
(11211, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Забраться в ветролет.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 11211;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 11211, 0, 0, 9, 25212, 0, 0, 0, '', NULL);