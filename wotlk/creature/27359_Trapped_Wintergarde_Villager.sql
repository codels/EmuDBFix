SET @NPC = 27359;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES 
(@NPC, 0, 0, 1, 1, 0, 100, 0, 3000, 5000, 10000, 10000, 45, 0, 1, 0, 0, 0, 0, 11, 27370, 5, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Set data 1 for creature 27370'),
(@NPC, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 11, 27370, 5, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Start attack'),
(@NPC, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Stop autoattack'),
(@NPC, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Stop combat movement'),
(@NPC, 0, 4, 5, 7, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Say'),
(@NPC, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Trapped Wintergarde Villager - Despawn');

DELETE FROM `creature_text` WHERE `entry` = 27359;
INSERT INTO `creature_text` (`entry`, `text`, `type`, `emote`, `comment`) VALUES
(27359, 'Thanks!', 12, 1, 'Trapped Wintergarde Villager');