SET @NPC = 26532;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `flags_extra` = `flags_extra` | 1, `ScriptName` = 'boss_epoch' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-860, -861, -862, -863, -864, -865, -866, -867);