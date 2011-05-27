UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'mob_phase_hunter'
WHERE `entry` = 18879;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 18879;