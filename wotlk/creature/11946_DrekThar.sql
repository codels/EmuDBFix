SET @NPC = 11946;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_drekthar' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;