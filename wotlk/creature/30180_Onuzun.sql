SET @NPC = 30180;
SET @GOSSIP = 9878;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 1, `unit_flags` = 256, `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP, 13701);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 'I have bad news for you Onu\'zun: I\'m gonna have to cut short your dreams!', 1, 1);

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `comment`) VALUES
(@NPC, 0, 'Onu\'zun gonna kill you dead!', 12, 'Onu\'zun'),
(@NPC, 1, 'Onu\'zun is defeated by the ugliest person ever!', 12, 'Onu\'zun'),
(@NPC, 2, 'Onu\'zun go now. You\'ll miss me.', 12, 'Onu\'zun');

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES 
(@NPC, 0, 1, 62, 0, 0, @GOSSIP, 0, 0, 0, 2, 14, 1, ''),
(@NPC, 1, 0, 61, 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(@NPC, 2, 0, 4, 0, 0, 0, 0, 0, 0, 22, 1, 0, ''),
(@NPC, 3, 0, 7, 0, 0, 0, 0, 0, 0, 2, 0, 1, ''),
(@NPC, 4, 0, 7, 0, 0, 0, 0, 0, 0, 22, 1, 0, ''),
(@NPC, 5, 6, 2, 5, 0, 0, 15, 0, 0, 33, 30180, 2, ''),
(@NPC, 6, 7, 61, 5, 0, 0, 0, 0, 0, 1, 1, 0, ''),
(@NPC, 7, 0, 61, 5, 0, 0, 0, 0, 0, 22, 2, 0, ''),
(@NPC, 8, 0, 0, 2, 0, 500, 500, 1000, 1000, 24, 0, 0, ''),
(@NPC, 9, 0, 13, 1, 0, 9000, 11000, 0, 0, 11, 15122, 2, ''),
(@NPC, 10, 11, 61, 0, 0, 0, 0, 0, 0, 11, 18100, 2, ''),
(@NPC, 11, 0, 61, 0, 0, 0, 0, 0, 0, 21, 0, 0, ''),
(@NPC, 12, 14, 9, 4, 0, 0, 30, 1000, 1000, 22, 1, 0, ''),
(@NPC, 13, 15, 9, 1, 0, 30, 100, 1000, 1000, 22, 4, 0, ''),
(@NPC, 14, 0, 61, 0, 0, 0, 0, 0, 0, 21, 0, 0, ''),
(@NPC, 15, 0, 61, 0, 0, 0, 0, 0, 0, 21, 1, 0, ''),
(@NPC, 16, 0, 9, 1, 0, 0, 5, 8000, 9000, 11, 29717, 2, ''),
(@NPC, 17, 0, 0, 1, 0, 1000, 1200, 2600, 2700, 11, 54096, 2, ''),
(@NPC, 18, 0, 7, 0, 0, 0, 0, 0, 0, 1, 2, 0, '');