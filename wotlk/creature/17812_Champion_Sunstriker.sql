SET @NPC = 17812;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_second_trial_paladin' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;