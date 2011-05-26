UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'boss_meathook'
WHERE `entry` = 26529;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26529;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-841, -842, -843, -844, -845, -846);

DELETE FROM `script_texts` WHERE `npc_entry` = 26529;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(26529, -1595026, 'Play time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Поиграем!', 13428, 1, 0, 0, 'meathook SAY_AGGRO'),
(26529, -1595027, 'Boring...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Скучно...', 13430, 1, 0, 0, 'meathook SAY_SLAY_1'),
(26529, -1595028, 'Why you stop moving?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Почему ты не двигаться?', 13431, 1, 0, 0, 'meathook SAY_SLAY_2'),
(26529, -1595029, 'Get up! Me not done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вставай! Я не закончил!', 13432, 1, 0, 0, 'meathook SAY_SLAY_3'),
(26529, -1595030, 'New toys!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Новые игрушки!', 13429, 1, 0, 0, 'meathook SAY_SPAWN'),
(26529, -1595031, 'This... not fun...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Это не смешно…', 13433, 1, 0, 0, 'meathook SAY_DEATH');