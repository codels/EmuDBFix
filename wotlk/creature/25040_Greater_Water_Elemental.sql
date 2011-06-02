SET @NPC = 25040;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'mob_water_elemental' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;