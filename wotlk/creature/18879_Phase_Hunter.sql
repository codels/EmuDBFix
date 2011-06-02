SET @NPC = 18879;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'mob_phase_hunter' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;