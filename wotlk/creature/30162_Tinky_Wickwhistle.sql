SET @NPC = 30162;
SET @GOSSIP = 9875;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 1, `unit_flags` = 256, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP, 13694),
(@GOSSIP, 13695);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 'Sorry, Tinky, but I can\'t afford you as a distraction while I\'m doing what needs to be done here.', 1, 1);

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `comment`) VALUES
(@NPC, 0, 'Grrrrrrrr! I\'ll kneecap ya!', 14, 'Tinky Wickwhistle'),
(@NPC, 1, 'YOU\'RE NO FUN!', 14, 'Tinky Wickwhistle'),
(@NPC, 2, 'WHEE!', 14, 'Tinky Wickwhistle');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_phase_mask`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES 
(@NPC, 0, 1, 62, 0, 0, @GOSSIP, 0, 0, 0, 2, 14, 1, ''),
(@NPC, 1, 0, 61, 0, 0, 0, 0, 0, 0, 1, 0, 0, ''),
(@NPC, 2, 0, 4, 0, 0, 0, 0, 0, 0, 22, 1, 0, ''),
(@NPC, 3, 0, 7, 0, 0, 0, 0, 0, 0, 2, 0, 1, ''),
(@NPC, 4, 0, 7, 0, 0, 0, 0, 0, 0, 22, 1, 0, ''),
(@NPC, 5, 6, 2, 1, 0, 0, 15, 0, 0, 33, 30162, 2, ''),
(@NPC, 6, 7, 61, 1, 0, 0, 0, 0, 0, 1, 1, 0, ''),
(@NPC, 7, 0, 61, 1, 0, 0, 0, 0, 0, 22, 2, 0, ''),
(@NPC, 8, 0, 0, 2, 0, 500, 500, 1000, 1000, 24, 0, 0, ''),
(@NPC, 9, 0, 0, 1, 0, 1000, 1500, 5000, 7000, 11, 61552, 2, ''),
(@NPC, 10, 11, 0, 1, 0, 1600, 2000, 3000, 4000, 11, 37666, 2, ''),
(@NPC, 11, 0, 61, 0, 0, 0, 0, 0, 0, 1, 2, 0, '');