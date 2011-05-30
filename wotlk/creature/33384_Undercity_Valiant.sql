UPDATE `creature_template` SET
        `gossip_menu_id` = 10473,
        `AIName` = 'SmartAI',
        `questItem1` = 45127
WHERE `entry` = 33384;

DELETE FROM `gossip_scripts` WHERE `id` = 10473;
DELETE FROM `db_script_string` WHERE `entry` = 2000000449;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10473;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`,
`action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`) VALUES
(10473, 0, 0, 'I am ready to fight!', 1, 1, 0, 0, 0, 0, 0, NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 10473;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 10473, 0, 0, 1, 62853, 0, 0, 0, '', NULL),
(15, 10473, 0, 0, 6, 67, 0, 0, 0, '', NULL);

DELETE FROM `creature_text` WHERE `entry` = 33384;
INSERT INTO `creature_text` (`entry`, `text`) VALUES
(33384, 'I yield to you.');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10473;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 33384 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`,
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`,
`target_o`, `comment`) VALUES 
(33384, 0, 0, 1, 62, 0, 100, 0, 10473, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 1, 7, 61, 0, 100, 0, 0, 0, 0, 0, 19, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 2, 3, 7, 0, 100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 5, 6, 2, 0, 100, 0, 0, 10, 500, 500, 85, 62724, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(33384, 0, 8, 0, 0, 1, 100, 0, 100, 100, 100, 100, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');