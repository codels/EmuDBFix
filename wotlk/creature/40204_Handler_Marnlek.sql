SET @NPC = 40204;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

UPDATE `gossip_menu_option` SET `action_script_id` = 0 WHERE `menu_id` = 11345 AND `id` IN (0, 1, 2);
DELETE FROM `gossip_scripts` WHERE `id` IN (1134500, 1134501, 1134502);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC, 0, 3, 62, 11345, 0, 85, 74978, 7, 'Invoker self cast'),
(@NPC, 1, 3, 62, 11345, 1, 85, 75421, 7, 'Invoker self cast'),
(@NPC, 2, 3, 62, 11345, 2, 85, 75422, 7, 'Invoker self cast'),
(@NPC, 3, 0, 61, 0, 0, 72, 0, 7, 'Close gossip');