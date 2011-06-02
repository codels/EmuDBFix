SET @NPC = 20777;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@NPC, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set phase 1'),
(@NPC, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set phase 1'),
(@NPC, 0, 2, 0, 2, 1, 100, 0, 0, 20, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set phase 2'),
(@NPC, 0, 3, 0, 8, 2, 100, 1, 35771, 0, 0, 0, 33, 20982, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'killcredit'),
(@NPC, 0, 5, 0, 0, 0, 70, 0, 3000, 6000, 15000, 25000, 11, 32023, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast');