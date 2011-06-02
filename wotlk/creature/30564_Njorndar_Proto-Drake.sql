SET @NPC = 30564;
UPDATE `creature_template` SET `npcflag` = 0, `speed_walk` = 3, `speed_run` = 3, `spell1` = 57493, `spell3` = 7769, `VehicleId` = 247, `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(@NPC, 27, 60, 1, 1, 'Set animation fly when passenger boarded');