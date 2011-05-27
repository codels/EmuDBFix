UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'boss_galvangar'
WHERE `entry` = 11947;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11947;