UPDATE `creature_template` SET
        `IconName` = 'Speak',
        `faction_A` = 35,
        `faction_H` = 35,
        `npcflag` = 16777216,
        `rangeattacktime` = 0,
        `spell1` = 0,
        `AIName` = 'SmartAI'
WHERE `entry` = 26421;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 26421;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`,
`quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(26421, 47575, 12092, 1, 12092, 1, 0, 0, 0),
(26421, 47575, 12096, 1, 12096, 1, 0, 0, 0);

-- delete eventai in ytdb
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26421;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 26421;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`,
`event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`,
`action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`,
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`,
`target_o`, `comment`) VALUES
(26421, 0, 0, 0, 8, 0, 100, 0, 47575, 0, 10000, 10000, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'change faction'),
(26421, 0, 1, 0, 2, 0, 100, 0, 0, 50, 15000, 20000, 11, 50994, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'buff');