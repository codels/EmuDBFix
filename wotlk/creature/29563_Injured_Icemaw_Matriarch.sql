UPDATE `creature_template` SET
        `IconName` = 'vehichleCursor',
        `faction_A` = 35,
        `faction_H` = 35,
        `npcflag` = 16777216
WHERE `entry` = 29563;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 29563;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`,
`quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(29563, 56795, 12983, 1, 12983, 1, 0, 0, 0);