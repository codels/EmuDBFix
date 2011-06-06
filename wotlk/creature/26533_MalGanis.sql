SET @NPC = 26533;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `flags_extra` = `flags_extra` | 1, `ScriptName` = 'boss_mal_ganis' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-868, -869, -870, -871, -872, -873, -874, -875, -876);