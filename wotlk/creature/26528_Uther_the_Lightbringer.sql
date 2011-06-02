SET @NPC = 26528;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `emote`, `comment`) VALUES 
(@NPC, -1595071, 'Watch your tone with me, boy. You may be the prince, but I\'m still your superior as a paladin!', 'Следи за своим тоном, юноша. Хоть ты и принц, но, как паладин, ты все еще находишься под моим командованием.', 12839, 0, 25, 'culling SAY_PHASE102'),
(@NPC, -1595074, 'What?', 'Что?', 12840, 0, 5, 'culling SAY_PHASE105'),
(@NPC, -1595076, 'How can you even consider that? There\'s got to be some other way.', 'Как ты мог даже подумать об этом?! Должен быть какой-то другой путь!', 12841, 0, 1, 'culling SAY_PHASE107'),
(@NPC, -1595078, 'You are not my king yet, boy! Nor would I obey that command even if you were!', 'Пока ты еще не король, юноша. Но этот приказ я не выполнил бы, будь ты хоть трижды королем!', 12842, 1, 22, 'culling SAY_PHASE109'),
(@NPC, -1595080, 'Treason? Have you lost your mind, Arthas?', 'Измену? Ты совсем лишился рассудка, Артас?', 12843, 0, 5, 'culling SAY_PHASE111'),
(@NPC, -1595084, 'You\'ve just crossed a terrible threshold, Arthas.', 'Ты пересек опасную черту, Артас.', 12844, 0, 25, 'culling SAY_PHASE115');