SET @NPC = 14762;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'mob_av_marshal_or_warmaster' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;