SET @NPC = 30081;
SET @GOSSIP = 9869;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = 1, `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `gossip_menu` WHERE `entry` = @GOSSIP;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (@GOSSIP, 13674);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = @GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP, 'I challenge you to a duel, Scarlet scum!', 1, 1);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_phase_mask`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC, 0, 1, 62, 0, 0, @GOSSIP, 0, 0, 0, 2, 14, 1, 'gossip faction change on 14'),
(@NPC, 1, 0, 61, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'say after gossip'),
(@NPC, 2, 0, 4, 0, 0, 0, 0, 0, 0, 22, 1, 0, 'set phase 1 on aggro'),
(@NPC, 3, 0, 0, 1, 1, 1000, 10000, 10000, 10000, 11, 13005, 2, 'cast spell "Hammer of Justice"'),
(@NPC, 4, 0, 0, 1, 0, 2000, 5000, 2000, 5000, 11, 14518, 2, 'cast spell "Crusader Strike"'),
(@NPC, 5, 0, 2, 1, 1, 20, 50, 0, 0, 11, 17233, 1, 'cast spell "Lay on Hands"'),
(@NPC, 6, 7, 2, 1, 0, 0, 15, 0, 0, 33, 30081, 2, 'kill credit on 15% hp'),
(@NPC, 7, 8, 61, 1, 0, 0, 0, 0, 0, 1, 1, 0, 'say after kill credit'),
(@NPC, 8, 0, 61, 1, 0, 0, 0, 0, 0, 22, 2, 0, 'set phase 2 after say'),
(@NPC, 9, 0, 0, 2, 0, 500, 500, 1000, 1000, 24, 0, 1, 'evade on phase2'),
(@NPC, 10, 0, 7, 0, 0, 0, 0, 0, 0, 2, 0, 1, 'reset faction on evade'),
(@NPC, 11, 0, 7, 0, 0, 0, 0, 0, 0, 22, 1, 0, 'set phase 1 on evade');

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `groupid`, `text`, `type`, `comment`) VALUES
(@NPC, 0, 'You dare to touch ME? You won\'t keep me from proving myself to the Lich King!', 14, 'Efrem the Faithful'),
(@NPC, 1, 'Wait, wait... I surrender! Please, no more! I\'ll leave!', 14, 'Efrem the Faithful');