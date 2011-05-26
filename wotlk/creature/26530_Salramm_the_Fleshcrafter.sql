UPDATE `creature_template` SET
        `spell1` = 0,
        `spell2` = 0,
        `spell3` = 0,
        `spell4` = 0,
        `AIName` = '',
        `ScriptName` = 'boss_salramm'
WHERE `entry` = 26530;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26530;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-847, -848, -849, -850, -851, -852, -853, -854, -855, -856, -857, -858, -859);

DELETE FROM `script_texts` WHERE `npc_entry` = 26530;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(26530, -1595032, 'Ah, the entertainment has arrived!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'А, развлечемся!', 13472, 1, 0, 0, 'salramm SAY_AGGRO'),
(26530, -1595033, 'You are too late, champion of Lordaeron. The dead shall have their day.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Слишком поздно, герой Лордерона. Пришло время мертвых.', 13471, 1, 0, 0, 'salramm SAY_SPAWN'),
(26530, -1595034, 'The fun is just beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Веселье только начинается!', 13473, 1, 0, 0, 'salramm SAY_SLAY_1'),
(26530, -1595035, 'Aah, quality materials!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Аааа, качественный материал!', 13474, 1, 0, 0, 'salramm SAY_SLAY_2'),
(26530, -1595036, 'Don\'t worry, I\'ll make good use of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Не волнуйся. Я найду куда тебя приспособить.', 13475, 1, 0, 0, 'salramm SAY_SLAY_3'),
(26530, -1595037, 'You only advance... the master\'s plan...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы всего лишь часть... плана хозяина...', 13483, 1, 0, 0, 'salramm SAY_DEATH'),
(26530, -1595038, 'BOOM! Hahahahah...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'БУМ! Хе-хе-ха-ха...', 13478, 1, 0, 0, 'salramm SAY_EXPLODE_GHOUL_1'),
(26530, -1595039, 'Blood... destruction... EXHILARATING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Кровь... разрушение... ВОСХИТИТЕЛЬНО!', 13479, 1, 0, 0, 'salramm SAY_EXPLODE_GHOUL_2'),
(26530, -1595040, 'I want a sample...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужен образец...', 13480, 1, 0, 0, 'salramm SAY_STEAL_FLESH_1'),
(26530, -1595041, 'Such strength... it must be mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Столько силы... она будет моей!', 13481, 1, 0, 0, 'salramm SAY_STEAL_FLESH_2'),
(26530, -1595042, 'Your flesh betrays you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Твоя плоть предает тебя!', 13482, 1, 0, 0, 'salramm SAY_STEAL_FLESH_3'),
(26530, -1595043, 'Say hello to some friends of mine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Познакомьтесь с моими друзьями.', 13476, 1, 0, 0, 'salramm SAY_SUMMON_GHOULS_1'),
(26530, -1595044, 'Come, citizen of Stratholme! Meet your saviors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Жители Стратхольма! Встречайте ваших спасителей.', 13477, 1, 0, 0, 'salramm SAY_SUMMON_GHOULS_2');