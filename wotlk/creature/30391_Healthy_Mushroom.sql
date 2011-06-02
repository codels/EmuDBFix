SET @NPC = 30391;
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
        `AIName` = if(`entry` = @NPC, 'SmartAI', '')
WHERE `entry` IN (@NPC, 31461);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param1`, `comment`) VALUES
(@NPC, 0, 6, 0, 0, 0, 0, 28, 57055, 18, 1, 'debuff mini'),
(@NPC, 1, 25, 0, 0, 0, 0, 11, 31690, 1, 0, 'visible hack'),
(@NPC, 2, 1, 30000, 30000, 1000, 1000, 37, 0, 1, 0, 'die');