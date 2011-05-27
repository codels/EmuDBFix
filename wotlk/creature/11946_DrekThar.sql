UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'boss_drekthar'
WHERE `entry` = 11946;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11946;