SET @NPC = 15760;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_winter_reveler' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;