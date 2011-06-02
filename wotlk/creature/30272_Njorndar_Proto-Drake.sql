SET @NPC = 30272;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES
(@NPC, 57401, 13071, 1, 13071, 1);