SET @NPC = 23651;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES 
(@NPC, 0, 0, 0, 2, 0, 100, 0, 0, 20, 10000, 10000, 11, 48193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'cast'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 2500, 3000, 2500, 3000, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast'),
(@NPC, 0, 2, 0, 9, 0, 100, 0, 5, 30, 15000, 20000, 11, 35570, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'cast'),
(@NPC, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'say');

-- Need correct text
DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `emote`, `comment`) VALUES
(@NPC, 'Your death is close!', 12, 100, 1, 'Dragonflayer Tribesman');