UPDATE `creature_template` SET
        `IconName` = 'vehichleCursor',
        `npcflag` = 16777216
WHERE `entry` = 29708;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 29708;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`,
`quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(29708, 55028, 12856, 1, 12856, 1, 0, 0, 0);