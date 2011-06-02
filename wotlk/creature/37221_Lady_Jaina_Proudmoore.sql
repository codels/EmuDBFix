SET @NPC = 37221;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1668001, 'The chill of this place... Brr... I can feel my blood freezing.', 'Как же тут холодно… Кровь стынет в жилах.', 16631, 1, 'Jaina SAY_JAINA_INTRO_1'),
(@NPC, -1668002, 'What is that? Up ahead! Could it be... ? Heroes at my side!', 'Что это там впереди?.. Неужели?.. Скорей, герои!', 16632, 1, 'Jaina SAY_JAINA_INTRO_2'),
(@NPC, -1668003, 'Frostmourne! The blade that destroyed our kingdom...', 'Ледяная Скорбь: клинок, разрушивший наше королевство…', 16633, 1, 'Jaina SAY_JAINA_INTRO_3'),
(@NPC, -1668004, 'Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space, back up please!', 'Отойдите! Тот, кто коснется этого клинка, обречет себя на вечные муки! Я попытаюсь заговорить с душами, заключенными в Ледяной Скорби. Расступитесь. Чуть назад, прошу.', 16634, 1, 'Jaina SAY_JAINA_INTRO_4'),
(@NPC, -1668006, 'Uther! Dear Uther! ... I... I\'m so sorry.', 'Утер! Милый Утер! Мне так жаль...', 16635, 0, 'Jaina SAY_JAINA_INTRO_5'),
(@NPC, -1668008, 'Arthas is here? Maybe I...', 'Артас здесь? Может, я…', 16636, 0, 'Jaina SAY_JAINA_INTRO_6'),
(@NPC, -1668010, 'But Uther, if there\'s any hope of reaching Arthas. I... I must try.', 'Но если есть малейшая надежда вернуть Артаса… я должна попытаться.', 16637, 0, 'Jaina SAY_JAINA_INTRO_7'),
(@NPC, -1668012, 'Tell me how, Uther? How do I destroy my prince? My...', 'Но как, Утер? Как мне убить моего принца? Моего…', 16638, 0, 'Jaina SAY_JAINA_INTRO_8'),
(@NPC, -1668014, 'You\'re right, Uther. Forgive me. I... I don\'t know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.', 'Ты прав, Утер. Прости меня. Я не знаю… что на меня нашло. Мы передадим твои слова королю и рыцарям, которые сражаются с Плетью в Цитадели Ледяной Короны.', 16639, 0, 'Jaina SAY_JAINA_INTRO_9'),
(@NPC, -1668017, 'Who could bear such a burden?', 'Кому по силам такое бремя?', 16640, 0, 'Jaina SAY_JAINA_INTRO_10'),
(@NPC, -1668019, 'Then maybe there is still hope...', 'Но может быть, еще есть надежда…', 16641, 0, 'Jaina SAY_JAINA_INTRO_11'),
(@NPC, -1668042, 'You won\'t deny me this Arthas! I must know! I must find out!', 'Ты от меня не отмахнешься, Артас! Я должна понять… Я должна знать…', 16642, 1, 'Jaina SAY_JAINA_INTRO_END');