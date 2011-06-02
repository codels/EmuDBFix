SET @NPC = 21241;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_bloodmaul_brutebane' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;