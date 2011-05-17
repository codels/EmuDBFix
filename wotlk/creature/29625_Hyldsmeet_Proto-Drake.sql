UPDATE `creature_template` SET
        `npcflag` = 16777216,
        `AIName` = 'SmartAI'
WHERE `entry` = 29625;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 29625;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`,
`quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(29625, 46598, 0, 0, 0, 1, 0, 0, 0);

-- temp fix
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29625;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`,
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`,
`action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`,
`target_y`, `target_z`, `target_o`, `comment`) VALUES
(29625, 0, 0, 0, 27, 0, 100, 0, 1000, 1000, 0, 0, 33, 29800, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 'killCredit');