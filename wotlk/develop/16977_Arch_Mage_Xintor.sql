SET @ENTRY = 16977;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @ENTRY;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` = -47;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @ENTRY AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Prevent Combat Movement on Spawn'),
(@ENTRY, 0, 1, 2, 4, 0, 100, 0, 0, 0, 0, 0, 11, 20823, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Cast Fireball on Aggro'),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Set Phase 1 on Aggro'),
(@ENTRY, 0, 3, 0, 9, 1, 100, 0, 0, 40, 2400, 3800, 11, 20823, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Cast Fireball (Phase 1)'),
(@ENTRY, 0, 4, 5, 3, 1, 100, 0, 0, 15, 500, 500, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Start Combat Movement when Mana is at 15% (Phase 1)'),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Set Phase 2 when Mana is at 15% (Phase 1)'),
(@ENTRY, 0, 6, 0, 9, 1, 100, 0, 35, 80, 500, 500, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Start Combat Movement at 35 Yards (Phase 1)'),
(@ENTRY, 0, 7, 0, 9, 1, 100, 0, 5, 15, 500, 500, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Prevent Combat Movement at 15 Yards (Phase 1)'),
(@ENTRY, 0, 8, 0, 9, 1, 100, 0, 0, 5, 500, 500, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Start Combat Movement Below 5 Yards'),
(@ENTRY, 0, 9, 0, 3, 2, 100, 0, 30, 100, 500, 500, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@ENTRY, 0, 10, 0, 0, 0, 50, 0, 6000, 8000, 9000, 12000, 11, 15736, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Cast Arcane Missiles'),
(@ENTRY, 0, 11, 12, 2, 0, 100, 1, 0, 50, 0, 0, 11, 33245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Cast Ice Barrier When Below 50% HP'),
(@ENTRY, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 29458, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Cast Blizzard When Below 50% HP'),
(@ENTRY, 0, 13, 0, 2, 0, 100, 1, 0, 15, 0, 0, 22, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Set Phase 3 at 15% HP'),
(@ENTRY, 0, 14, 15, 2, 4, 100, 1, 0, 15, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Start Combat Movement at 15% HP (Phase 3)'),
(@ENTRY, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Flee at 15% HP (Phase 3)'),
(@ENTRY, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Emote at 15% HP (Phase 3)'),
(@ENTRY, 0, 17, 0, 7, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Set Phase to 0 on Evade');

DELETE FROM `creature_text` WHERE `entry` = @ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY, 0, 0, '%s attempts to run away in fear!', 16, 0, 0, 0, 0, 0, 'Arch Mage Xintor - Emote at 15% HP (Phase 3)');