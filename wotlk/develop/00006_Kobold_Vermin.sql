SET @NPC = 6;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-7, -8);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `target_type`, `comment`) VALUES (@NPC, 4, 1, 2, 'Say on aggro');

DELETE FROM `creature_text` WHERE `entry` = @NPC;
INSERT INTO `creature_text` (`entry`, `id`, `text`, `type`, `comment`) VALUES
(@NPC, 0, 'You no take candle!', 12, 'Kobold Vermin'),
(@NPC, 1, 'Yiieeeee! Me run!', 12, 'Kobold Vermin');