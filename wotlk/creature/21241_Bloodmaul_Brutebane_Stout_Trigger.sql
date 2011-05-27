UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'npc_bloodmaul_brutebane'
WHERE `entry` = 21241;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 21241;