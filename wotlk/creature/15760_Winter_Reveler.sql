UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'npc_winter_reveler'
WHERE `entry` = 15760;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15760;