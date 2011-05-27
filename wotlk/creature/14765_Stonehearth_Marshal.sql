UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'mob_av_marshal_or_warmaster'
WHERE `entry` = 14765;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14765;