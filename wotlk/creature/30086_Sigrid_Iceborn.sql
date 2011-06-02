SET @NPC = 30086;
UPDATE `creature_template` SET `npcflag` = 1, `unit_flags` = 256, `gossip_menu_id` = 9870, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu` WHERE `entry` = 9870;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (9870, 13678);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9870;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(9870, 'I\'ve heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try.', 1, 1);

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `comment`) VALUES
(@NPC, 0, 'Taste my steel, little girl!', ''),
(@NPC, 1, 'You fight well, little one. I am bested for now. We will meet again I assure you. When we do I will be better prepared!', '');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_phase_mask`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES 
(@NPC, 0, 1, 62, 0, 0, 9870, 0, 0, 0, 2, 14, 1, ''),
(@NPC, 1, 0, 61, 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(@NPC, 2, 3, 2, 1, 0, 0, 15, 0, 0, 33, 30086, 2, ''),
(@NPC, 3, 4, 61, 1, 0, 0, 0, 0, 0, 1, 1, 2, ''),
(@NPC, 4, 0, 61, 1, 0, 0, 0, 0, 0, 22, 2, 1, ''),
(@NPC, 5, 0, 0, 2, 0, 500, 500, 1000, 1000, 24, 0, 0, ''),
(@NPC, 6, 0, 4, 1, 0, 0, 0, 0, 0, 11, 61165, 1, ''),
(@NPC, 7, 10, 9, 1, 0, 0, 3, 5000, 8000, 21, 1, 2, ''),
(@NPC, 8, 9, 9, 1, 0, 5, 30, 1600, 2000, 21, 0, 1, ''),
(@NPC, 9, 0, 61, 1, 0, 0, 0, 0, 0, 11, 61168, 2, ''),
(@NPC, 10, 0, 61, 1, 0, 0, 0, 0, 0, 11, 61164, 2, ''),
(@NPC, 11, 0, 9, 1, 0, 31, 100, 0, 0, 21, 1, 1, ''),
(@NPC, 12, 0, 4, 0, 0, 0, 0, 0, 0, 22, 1, 0, ''),
(@NPC, 13, 0, 7, 0, 0, 0, 0, 0, 0, 2, 0, 1, ''),
(@NPC, 14, 0, 7, 0, 0, 0, 0, 0, 0, 22, 1, 0, '');