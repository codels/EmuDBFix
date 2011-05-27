UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'npc_second_trial_paladin'
WHERE `entry` = 17812;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 17812;