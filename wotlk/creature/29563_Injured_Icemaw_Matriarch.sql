SET @NPC = 29563;
UPDATE `creature_template` SET `IconName` = 'vehichleCursor', `faction_A` = 35, `faction_H` = 35, `npcflag` = 16777216 WHERE `entry` = @NPC;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(@NPC, 56795, 12983, 1, 12983, 1);