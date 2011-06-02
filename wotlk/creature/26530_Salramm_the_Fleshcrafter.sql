SET @NPC = 26530;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `ScriptName` = 'boss_salramm' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-847, -848, -849, -850, -851, -852, -853, -854, -855, -856, -857, -858, -859);

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1595032, 'Ah, the entertainment has arrived!', 'А, развлечемся!', 13472, 1, 'salramm SAY_AGGRO'),
(@NPC, -1595033, 'You are too late, champion of Lordaeron. The dead shall have their day.', 'Слишком поздно, герой Лордерона. Пришло время мертвых.', 13471, 1, 'salramm SAY_SPAWN'),
(@NPC, -1595034, 'The fun is just beginning!', 'Веселье только начинается!', 13473, 1, 'salramm SAY_SLAY_1'),
(@NPC, -1595035, 'Aah, quality materials!', 'Аааа, качественный материал!', 13474, 1, 'salramm SAY_SLAY_2'),
(@NPC, -1595036, 'Don\'t worry, I\'ll make good use of you.', 'Не волнуйся. Я найду куда тебя приспособить.', 13475, 1, 'salramm SAY_SLAY_3'),
(@NPC, -1595037, 'You only advance... the master\'s plan...', 'Вы всего лишь часть... плана хозяина...', 13483, 1, 'salramm SAY_DEATH'),
(@NPC, -1595038, 'BOOM! Hahahahah...', 'БУМ! Хе-хе-ха-ха...', 13478, 1, 'salramm SAY_EXPLODE_GHOUL_1'),
(@NPC, -1595039, 'Blood... destruction... EXHILARATING!', 'Кровь... разрушение... ВОСХИТИТЕЛЬНО!', 13479, 1, 'salramm SAY_EXPLODE_GHOUL_2'),
(@NPC, -1595040, 'I want a sample...', 'Мне нужен образец...', 13480, 1, 'salramm SAY_STEAL_FLESH_1'),
(@NPC, -1595041, 'Such strength... it must be mine!', 'Столько силы... она будет моей!', 13481, 1, 'salramm SAY_STEAL_FLESH_2'),
(@NPC, -1595042, 'Your flesh betrays you.', 'Твоя плоть предает тебя!', 13482, 1, 'salramm SAY_STEAL_FLESH_3'),
(@NPC, -1595043, 'Say hello to some friends of mine.', 'Познакомьтесь с моими друзьями.', 13476, 1, 'salramm SAY_SUMMON_GHOULS_1'),
(@NPC, -1595044, 'Come, citizen of Stratholme! Meet your saviors.', 'Жители Стратхольма! Встречайте ваших спасителей.', 13477, 1, 'salramm SAY_SUMMON_GHOULS_2');