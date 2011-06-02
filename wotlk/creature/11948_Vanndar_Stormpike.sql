SET @NPC = 11948;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_vanndar' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;