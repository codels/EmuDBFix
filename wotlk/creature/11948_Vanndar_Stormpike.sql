UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'boss_vanndar'
WHERE `entry` = 11948;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11948;