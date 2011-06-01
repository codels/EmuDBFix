SET @ENTRY = 40204;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;

UPDATE `gossip_menu_option` SET `action_script_id` = 0 WHERE `menu_id` = 11345 AND `id` IN (0, 1, 2);
DELETE FROM `gossip_scripts` WHERE `id` IN (1134500, 1134501, 1134502);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 3, 62, 0, 100, 0, 11345, 0, 0, 0, 85, 74978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@ENTRY, 0, 1, 3, 62, 0, 100, 0, 11345, 1, 0, 0, 85, 75421, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@ENTRY, 0, 2, 3, 62, 0, 100, 0, 11345, 2, 0, 0, 85, 75422, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Invoker self cast'),
(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Close gossip');