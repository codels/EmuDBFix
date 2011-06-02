SET @NPC = 29708;
UPDATE `creature_template` SET `IconName` = 'vehichleCursor', `npcflag` = 16777216 WHERE `entry` = @NPC;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(@NPC, 55028, 12856, 1, 12856, 1);