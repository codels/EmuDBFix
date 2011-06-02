SET @NPC = 26529;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_meathook' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-841, -842, -843, -844, -845, -846);

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1595026, 'Play time!', 'Поиграем!', 13428, 1, 'meathook SAY_AGGRO'),
(@NPC, -1595027, 'Boring...', 'Скучно...', 13430, 1, 'meathook SAY_SLAY_1'),
(@NPC, -1595028, 'Why you stop moving?', 'Почему ты не двигаться?', 13431, 1, 'meathook SAY_SLAY_2'),
(@NPC, -1595029, 'Get up! Me not done!', 'Вставай! Я не закончил!', 13432, 1, 'meathook SAY_SLAY_3'),
(@NPC, -1595030, 'New toys!', 'Новые игрушки!', 13429, 1, 'meathook SAY_SPAWN'),
(@NPC, -1595031, 'This... not fun...', 'Это не смешно…', 13433, 1, 'meathook SAY_DEATH');