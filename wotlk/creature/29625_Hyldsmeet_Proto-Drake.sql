SET @NPC = 29625;
UPDATE `creature_template` SET `npcflag` = 16777216, `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (@NPC, 46598, 1);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `target_type`, `target_param1`, `comment`) VALUES
(@NPC, 27, 1000, 1000, 33, 29800, 18, 1, 'killCredit');