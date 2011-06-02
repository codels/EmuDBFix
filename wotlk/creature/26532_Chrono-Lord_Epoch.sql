SET @NPC = 26532;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `flags_extra` = `flags_extra` | 1, `ScriptName` = 'boss_epoch' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-860, -861, -862, -863, -864, -865, -866, -867);

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1595000, 'Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.', 'Принц Артас Менетил, в этот самый день могущественное зло поглотило твою душу. Смерть, которую ты должен был принести другим, сегодня придет за тобой.', 13408, 1, 'epoch SAY_INTRO | culling SAY_PHASE314'),
(@NPC, -1595001, 'We\'ll see about that, young prince.', 'Ну что ж, посмотрим, юный принц.', 13409, 1, 'epoch SAY_AGGRO'),
(@NPC, -1595002, 'Tick tock, tick tock...', 'Тик-так, тик-так...', 13410, 1, 'epoch SAY_TIME_WARP_1'),
(@NPC, -1595003, 'Not quick enough!', 'Слишком медленно!', 13411, 1, 'epoch SAY_TIME_WARP_2'),
(@NPC, -1595004, 'Let\'s get this over with.', 'Пора заканчивать.', 13412, 1, 'epoch SAY_TIME_WARP_3'),
(@NPC, -1595005, 'There is no future for you.', 'У тебя нет будущего.', 13413, 1, 'epoch SAY_SLAY_1'),
(@NPC, -1595006, 'This is the hour of our greatest triumph!', 'Пробил час нашего величайшего триумфа!', 13414, 1, 'epoch SAY_SLAY_2'),
(@NPC, -1595007, 'You were destined to fail.', 'Тебе было суждено потерпеть поражение.', 13415, 1, 'epoch SAY_SLAY_3'),
(@NPC, -1595008, '', NULL, 13416, 0, 'epoch SAY_DEATH');