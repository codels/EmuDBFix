SET @NPC = 2674;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_training_dummy' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;