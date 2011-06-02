SET @NPC = 11947;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_galvangar' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;