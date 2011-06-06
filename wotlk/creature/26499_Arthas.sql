SET @NPC = 26499;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_arthas' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;