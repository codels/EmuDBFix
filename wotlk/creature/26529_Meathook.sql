SET @NPC = 26529;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_meathook' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-841, -842, -843, -844, -845, -846);