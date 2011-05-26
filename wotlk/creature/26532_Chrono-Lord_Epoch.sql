UPDATE `creature_template` SET
        `spell1` = 0,
        `spell2` = 0,
        `spell3` = 0,
        `spell4` = 0,
        `AIName` = '',
        `flags_extra` = `flags_extra` | 1,
        `ScriptName` = 'boss_epoch'
WHERE `entry` = 26532;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26532;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-860, -861, -862, -863, -864, -865, -866, -867);

DELETE FROM `script_texts` WHERE `npc_entry` = 26532;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(26532, -1595000, 'Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Принц Артас Менетил, в этот самый день могущественное зло поглотило твою душу. Смерть, которую ты должен был принести другим, сегодня придет за тобой.', 13408, 1, 0, 0, 'epoch SAY_INTRO | culling SAY_PHASE314'),
(26532, -1595001, 'We\'ll see about that, young prince.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ну что ж, посмотрим, юный принц.', 13409, 1, 0, 0, 'epoch SAY_AGGRO'),
(26532, -1595002, 'Tick tock, tick tock...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Тик-так, тик-так...', 13410, 1, 0, 0, 'epoch SAY_TIME_WARP_1'),
(26532, -1595003, 'Not quick enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Слишком медленно!', 13411, 1, 0, 0, 'epoch SAY_TIME_WARP_2'),
(26532, -1595004, 'Let\'s get this over with. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Пора заканчивать.', 13412, 1, 0, 0, 'epoch SAY_TIME_WARP_3'),
(26532, -1595005, 'There is no future for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'У тебя нет будущего.', 13413, 1, 0, 0, 'epoch SAY_SLAY_1'),
(26532, -1595006, 'This is the hour of our greatest triumph!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Пробил час нашего величайшего триумфа!', 13414, 1, 0, 0, 'epoch SAY_SLAY_2'),
(26532, -1595007, 'You were destined to fail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Тебе было суждено потерпеть поражение.', 13415, 1, 0, 0, 'epoch SAY_SLAY_3'),
(26532, -1595008, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13416, 0, 0, 0, 'epoch SAY_DEATH');