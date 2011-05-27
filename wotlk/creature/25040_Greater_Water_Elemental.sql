UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'mob_water_elemental'
WHERE `entry` = 25040;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 25040;