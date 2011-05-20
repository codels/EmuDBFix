UPDATE `creature_template` SET
        `flags_extra` = `flags_extra` &~ 128,
        `modelid1` = 26981,
        `modelid2` = 0,
        `speed_walk` = 0,
        `speed_run` = 0,
        `ScriptName` = '',
        `faction_A` = 7,
        `faction_H` = 7,
        `unit_flags` = 512,
        `mindmg` = 0,
        `maxdmg` = 0,
        `attackpower` = 0,
        `dmg_multiplier` = 0,
        `baseattacktime` = 0,
        `rangeattacktime` = 0,
        `minrangedmg` = 0,
        `maxrangedmg` = 0,
        `rangedattackpower` = 0,
        `spell1` = 0,
        `AIName` = if(`entry` = 30391, 'SmartAI', '')
WHERE `entry` IN (30391, 31461);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 30391;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30391 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`,
`action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`,
`target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30391, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 28, 57055, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 'debuff mini'),
(30391, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 31690, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'visible hack'),
(30391, 0, 2, 0, 1, 0, 100, 0, 30000, 30000, 1000, 1000, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'die');
