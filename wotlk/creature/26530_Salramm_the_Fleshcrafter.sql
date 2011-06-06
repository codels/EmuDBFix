SET @NPC = 26530;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `ScriptName` = 'boss_salramm' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-847, -848, -849, -850, -851, -852, -853, -854, -855, -856, -857, -858, -859);