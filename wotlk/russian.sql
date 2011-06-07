/*########################################
###           `trinity_string`
########################################*/

UPDATE `trinity_string` SET `content_loc8` = 'Вы должны выбрать персонажа или существо.' WHERE `entry` = 1;
UPDATE `trinity_string` SET `content_loc8` = 'Вы должны выбрать существо.' WHERE `entry` = 2;
UPDATE `trinity_string` SET `content_loc8` = '[СЕРВЕР] %s' WHERE `entry` = 3;
UPDATE `trinity_string` SET `content_loc8` = '|cffff0000[Событие]: %s|r' WHERE `entry` = 4;
UPDATE `trinity_string` SET `content_loc8` = 'Нет справки для этой команды' WHERE `entry` = 5;
UPDATE `trinity_string` SET `content_loc8` = 'Нет такой команды' WHERE `entry` = 6;
UPDATE `trinity_string` SET `content_loc8` = 'Нет такой подкоманды' WHERE `entry` = 7;
UPDATE `trinity_string` SET `content_loc8` = 'Команда %s имеет подкоманды:%s' WHERE `entry` = 8;
UPDATE `trinity_string` SET `content_loc8` = 'Команды доступные Вам:' WHERE `entry` = 9;
UPDATE `trinity_string` SET `content_loc8` = 'Неправильный синтаксис.' WHERE `entry` = 10;
-- 11 - 601
UPDATE `trinity_string` SET `content_loc8` = 'Битва начнется через минуту!' WHERE `entry` IN (602, 636, 661, 1206, 1326, 10057);
-- 603 - 606
UPDATE `trinity_string` SET `content_loc8` = '$n роняет флаг Орды!' WHERE `entry` = 607;
UPDATE `trinity_string` SET `content_loc8` = '$n роняет флаг Альянса!' WHERE `entry` = 608;
UPDATE `trinity_string` SET `content_loc8` = '$n возвращает на базу флаг Альянса!' WHERE `entry` = 609;
UPDATE `trinity_string` SET `content_loc8` = '$n возвращает на базу флаг Орды!' WHERE `entry` = 610;
UPDATE `trinity_string` SET `content_loc8` = 'Недостаточно игроков. До завершения игры: %u мин.' WHERE `entry` = 750;
UPDATE `trinity_string` SET `content_loc8` = 'Битва начнется через 2 минуты!' WHERE `entry` IN (753, 754, 755, 1205, 1333, 10056);

/*########################################
###     `locales_gossip_menu_option`
########################################*/

DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` IN (4461, 6647, 10371, 9741, 11211);
INSERT INTO `locales_gossip_menu_option` (`menu_id`, `id`, `option_text_loc8`, `box_text_loc8`) VALUES
(4461, 0, 'Да. Так.', NULL),
(6647, 0, 'Я хочу узнать больше об учении Света.', NULL),
(6647, 1, 'Я хочу забыть свои таланты.', NULL),
(6647, 2, 'Я хочу расспросить о двойной специализации.', NULL),
(10371, 0, 'Купить двойную специализацию талантов.', 'Вы уверены что хотите купить двойную специализацию талантов?'),
(9741, 0, 'Мне нужно найти Дажика, у тебя есть его мел?', NULL),
(9741, 1, 'Мне нужно найти Дажика, у тебя есть его мел?', NULL),
(9741, 2, 'Мне нужно найти Горегека, у тебя есть его кандалы?', NULL),
(9741, 3, 'Мне нужно найти Зепика, у тебя есть его охотничий рог?', NULL),
(11211, 0, 'Забраться в ветролет.', NULL);

/*########################################
###         `locales_npc_text`
########################################*/

DELETE FROM `locales_npc_text` WHERE `entry` = 14391;
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc8`, `Text0_1_loc8`) VALUES
(14391, 'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.',
'Двойная специализация позволяет иметь доступ к двум наборам талантов. При переключении между ними вы получаете доступ ко второму набору символов и панелей команд. Переключение невозможно во время боя и оно потребует всех ваших сил.');

/*########################################
###         `creature_ai_texts`
########################################*/

UPDATE `creature_ai_texts` SET `content_loc8` = '% бежит прочь в страхе!' WHERE `entry` = -47;
UPDATE `creature_ai_texts` SET `content_loc8` = 'Я уничтожу Серебярный Авангард! Я сокрушу Плеть!' WHERE `entry` = -483;
UPDATE `creature_ai_texts` SET `content_loc8` = 'Пьем до дна, братья мои!' WHERE `entry` = -485;
UPDATE `creature_ai_texts` SET `content_loc8` = 'Теперь, когда мы обладаем силой диких богов, горящей в нашей крови, никто, даже Король-лич, не сможет остановить нас!' WHERE `entry` = -480;

/*########################################
###           `script_texts`
########################################*/

UPDATE `script_texts` SET `content_loc8` = 'Что? Этого не может быть!' WHERE `entry` = -1595091;
UPDATE `script_texts` SET `content_loc8` = 'Я не позволю вам осквернить эти таинства!' WHERE `entry` = -1189019;
UPDATE `script_texts` SET `content_loc8` = 'Горите в праведном огне!' WHERE `entry` = -1189020;
UPDATE `script_texts` SET `content_loc8` = 'Ох, хорошо пошло!' WHERE `entry` = -1230000;
-- 'Еще эля! Дайте еще!'
UPDATE `script_texts` SET `content_loc8` = 'Прочь, подлецы! Альтеракская долина достанется Альянсу!' WHERE `entry` = -1810023;
UPDATE `script_texts` SET `content_loc8` = 'Эй вы, жалкие трусы из Северного Волка! Хотите драться – так идите ко мне!' WHERE `entry` = -1810024;
UPDATE `script_texts` SET `content_loc8` = 'Теперь вы принадлежите мне!' WHERE `entry` = -1533109;
UPDATE `script_texts` SET `content_loc8` = 'Я вижу вас!' WHERE `entry` = -1533110;
UPDATE `script_texts` SET `content_loc8` = 'Пришло ваше время!' WHERE `entry` = -1533111;
UPDATE `script_texts` SET `content_loc8` = 'Закрой глаза... Усни!' WHERE `entry` = -1533112;
UPDATE `script_texts` SET `content_loc8` = 'Все народы этого мира исчезнут без следа. Это лиш вопрос времени.' WHERE `entry` = -1533113;
UPDATE `script_texts` SET `content_loc8` = 'Я вижу бесконечное страдание, Я вижу муки, Я вижу ярость, Я вижу... все!' WHERE `entry` = -1533114;
UPDATE `script_texts` SET `content_loc8` = 'Скоро... мир содрогнется!' WHERE `entry` = -1533115;
UPDATE `script_texts` SET `content_loc8` = 'Вам конец.' WHERE `entry` = -1533116;
UPDATE `script_texts` SET `content_loc8` = 'Голодные черви будут пировать в ваших гниющих трупах!' WHERE `entry` = -1533117;
UPDATE `script_texts` SET `content_loc8` = 'Неет!' WHERE `entry` = -1533118;
UPDATE `script_texts` SET `content_loc8` = 'Слава господину!' WHERE `entry` = -1533075;
UPDATE `script_texts` SET `content_loc8` = 'Прощайся с жизнью!' WHERE `entry` = -1533076;
UPDATE `script_texts` SET `content_loc8` = 'Смерть, чужакам!' WHERE `entry` = -1533077;
UPDATE `script_texts` SET `content_loc8` = 'Встаньте, мои войны! Встаньте и сражайтесь вновь!' WHERE `entry` = -1533078;
UPDATE `script_texts` SET `content_loc8` = 'Дело сделано!' WHERE `entry` = -1533079;
UPDATE `script_texts` SET `content_loc8` = 'Этот вздох был для тебя последним!' WHERE `entry` = -1533080;
UPDATE `script_texts` SET `content_loc8` = 'Я буду служить господину... даже после... смерти!' WHERE `entry` = -1533081;
UPDATE `script_texts` SET `content_loc8` = 'Шшш... скоро все будет кончено.' WHERE `entry` = -1533008;
UPDATE `script_texts` SET `content_loc8` = 'Подойдите ближе... лакомые кусочки. Я слишком долго мечтал о еде и крови.' WHERE `entry` = -1533007;
UPDATE `script_texts` SET `content_loc8` = 'Кого мне съесть первым ? Сложный выбор... все они пахнут так вкусно.' WHERE `entry` = -1533006;
UPDATE `script_texts` SET `content_loc8` = 'Куда идти ? Что делать ? Выбирайте, но все пути ведут к боли, и смерти.' WHERE `entry` = -1533005;
UPDATE `script_texts` SET `content_loc8` = 'Я слышу биение маленьких сердец. Да... теперь они бьются быстрей. Но скоро они остановятся.' WHERE `entry` = -1533004;
UPDATE `script_texts` SET `content_loc8` = 'Бегите, бегите! Я люблю горячую кровь!' WHERE `entry` = -1533003;
UPDATE `script_texts` SET `content_loc8` = 'Вам отсюда не выбраться.' WHERE `entry` = -1533002;
UPDATE `script_texts` SET `content_loc8` = 'Ооо... добро пожаловать в мою гостиную.' WHERE `entry` = -1533000;
UPDATE `script_texts` SET `content_loc8` = 'Посмотрим какие вы на вкус...' WHERE `entry` = -1533001;
UPDATE `script_texts` SET `content_loc8` = 'Артас! Ты не можешь так просто...' WHERE `entry` = -1595082;
UPDATE `script_texts` SET `content_loc8` = 'Прости, Артас. Я не могу на это смотреть.' WHERE `entry` = -1595086;
UPDATE `script_texts` SET `content_loc8` = 'Я рад, что ты пришел, Утер!' WHERE `entry` = -1595070;
UPDATE `script_texts` SET `content_loc8` = 'Как будто я не помню. Послушай, Утер, я должен рассказать тебе кое-что про чуму...' WHERE `entry` = -1595072;
UPDATE `script_texts` SET `content_loc8` = 'О нет. Мы опоздали. Все эти люди заражены чумой! Сейчас это еще незаметно, но скоро все они превратятся в нежить!' WHERE `entry` = -1595073;
UPDATE `script_texts` SET `content_loc8` = 'Весь город должен быть очищен.' WHERE `entry` = -1595075;
UPDATE `script_texts` SET `content_loc8` = 'Проклятие, Утер! Как будущий король, я приказываю тебе очистить этот город!' WHERE `entry` = -1595077;
UPDATE `script_texts` SET `content_loc8` = 'Тогда я буду расценивать это как измену.' WHERE `entry` = -1595079;
UPDATE `script_texts` SET `content_loc8` = 'Неужели? Лорд Утер, властью, данной мне по праву наследования, я отстраняю вас от командования и освобождаю от службы ваших паладинов.' WHERE `entry` = -1595081;
UPDATE `script_texts` SET `content_loc8` = 'Это уже сделано! Те из вас, кто действительно хочет спасти эту землю – за мной! Остальные – прочь с глаз моих!' WHERE `entry` = -1595083;
UPDATE `script_texts` SET `content_loc8` = 'Джайна?' WHERE `entry` = -1595085;
UPDATE `script_texts` SET `content_loc8` = 'Займите позицию, а я поведу небольшой отряд в Стратхольм и начну очищение. Мы должны изолировать и уничтожить зараженных жителей ради всего Лордерона!' WHERE `entry` = -1595087;
UPDATE `script_texts` SET `content_loc8` = 'Похоже, все готовы. Помните, эти люди заражены чумой и скоро умрут. Мы должны очистить Стратхольм и защитить Лордерон от Плети. Вперед.' WHERE `entry` = -1595088;
UPDATE `script_texts` SET `content_loc8` = 'Я могу помочь вам лишь быстрой смертью.' WHERE `entry` = -1595090;
UPDATE `script_texts` SET `content_loc8` = 'Это было только начало.' WHERE `entry` = -1595092;
UPDATE `script_texts` SET `content_loc8` = 'Я не допущу этого, Мал\'Ганис! Лучше эти люди погибнут от моей руки, чем станут твоими рабами после смерти!' WHERE `entry` = -1595093;
UPDATE `script_texts` SET `content_loc8` = 'Мал\'Ганис отправит своих прислужников из Плети навстречу нам. Опытные воины и маги, ступайте и уничтожьте врагов. Я возглавлю оставшиеся войска в деле очищения Стратхольма от заразы.' WHERE `entry` = -1595094;
UPDATE `script_texts` SET `content_loc8` = 'Герои, поспешите, встретимся у городской ратуши. Мы должны сразиться с Мал\'Ганисом на его территории!' WHERE `entry` = -1595095;
UPDATE `script_texts` SET `content_loc8` = 'Идите за мной. Я знаю дорогу.' WHERE `entry` = -1595096;
UPDATE `script_texts` SET `content_loc8` = 'Да, я рад, что я смог добраться сюда раньше чумы.' WHERE `entry` = -1595098;
UPDATE `script_texts` SET `content_loc8` = 'Что это за магия?' WHERE `entry` = -1595099;
UPDATE `script_texts` SET `content_loc8` = 'Все офицеры должны доложить мне, когда их отряды будут готовы. Мы вступим в Стратхольм по моему приказу.' WHERE `entry` = -1595101;
UPDATE `script_texts` SET `content_loc8` = 'Снова черная магия! Будьте готовы ко всему!' WHERE `entry` = -1595102;
UPDATE `script_texts` SET `content_loc8` = 'Идем дальше.' WHERE `entry` = -1595103;
UPDATE `script_texts` SET `content_loc8` = 'Будьте начеку. Нас окружили.' WHERE `entry` = -1595104;
UPDATE `script_texts` SET `content_loc8` = 'Подарить тебе жизнь будет слишком рискованно.' WHERE `entry` = -1595105;
UPDATE `script_texts` SET `content_loc8` = 'Мал\'Ганис не собирается облегчить нам жизнь.' WHERE `entry` = -1595106;
UPDATE `script_texts` SET `content_loc8` = 'Они упрямы.' WHERE `entry` = -1595107;
UPDATE `script_texts` SET `content_loc8` = 'Что еще он поставит у меня на пути?' WHERE `entry` = -1595108;
UPDATE `script_texts` SET `content_loc8` = 'Я делаю для Лордерона то, что должен, и никакие слова и поступки меня не остановят.' WHERE `entry` = -1595109;
UPDATE `script_texts` SET `content_loc8` = 'Кратчайший путь к Мал\'Ганису находится за тем книжным шкафом.' WHERE `entry` = -1595110;
UPDATE `script_texts` SET `content_loc8` = 'Это займет совсем немного времени.' WHERE `entry` = -1595111;
UPDATE `script_texts` SET `content_loc8` = 'Слава Свету, что потайной ход еще работает.' WHERE `entry` = -1595112;
UPDATE `script_texts` SET `content_loc8` = 'Давайте пройдем этот участок как можно быстрее. Если мы не погибнем от нежити, то можем погибнуть от этого огня.' WHERE `entry` = -1595113;
UPDATE `script_texts` SET `content_loc8` = 'Отдышитесь немного. Но имейте в виду, нам скоро снова в путь.' WHERE `entry` = -1595114;
UPDATE `script_texts` SET `content_loc8` = 'Отдых окончен, надо идти. Мал\'Ганис ждет.' WHERE `entry` = -1595115;
UPDATE `script_texts` SET `content_loc8` = 'Наконец нам хоть как-то повезло. Огонь еще не добрался до Торгового ряда. Мал\'Ганис должен быть на Площади рыцарей, которая находится недалеко отсюда. Скажите мне, как будете готовы идти дальше.' WHERE `entry` = -1595116;
UPDATE `script_texts` SET `content_loc8` = 'Да свершится правосудие.' WHERE `entry` = -1595117;
UPDATE `script_texts` SET `content_loc8` = 'Мы покончим с этим сейчас же, Мал\'Ганис. Один на один.' WHERE `entry` = -1595118;
UPDATE `script_texts` SET `content_loc8` = 'Я отыщу тебя на краю земли! Ты слышишь меня? На краю земли!' WHERE `entry` = -1595119;
UPDATE `script_texts` SET `content_loc8` = 'Вы славно сражались сегодня. Все, что Мал\'Ганис оставил тут – ваша награда. А мне нужно начинать готовиться к экспедиции в Нордскол.' WHERE `entry` = -1595120;
UPDATE `script_texts` SET `content_loc8` = 'Следи за своим тоном, юноша. Хоть ты и принц, но, как паладин, ты все еще находишься под моим командованием.' WHERE `entry` = -1595071;
UPDATE `script_texts` SET `content_loc8` = 'Что?' WHERE `entry` = -1595074;
UPDATE `script_texts` SET `content_loc8` = 'Как ты мог даже подумать об этом?! Должен быть какой-то другой путь!' WHERE `entry` = -1595076;
UPDATE `script_texts` SET `content_loc8` = 'Пока ты еще не король, юноша. Но этот приказ я не выполнил бы, будь ты хоть трижды королем!' WHERE `entry` = -1595078;
UPDATE `script_texts` SET `content_loc8` = 'Измену? Ты совсем лишился рассудка, Артас?' WHERE `entry` = -1595080;
UPDATE `script_texts` SET `content_loc8` = 'Ты пересек опасную черту, Артас.' WHERE `entry` = -1595084;
UPDATE `script_texts` SET `content_loc8` = 'Поиграем!' WHERE `entry` = -1595026;
UPDATE `script_texts` SET `content_loc8` = 'Скучно...' WHERE `entry` = -1595027;
UPDATE `script_texts` SET `content_loc8` = 'Почему ты не двигаться?' WHERE `entry` = -1595028;
UPDATE `script_texts` SET `content_loc8` = 'Вставай! Я не закончил!' WHERE `entry` = -1595029;
UPDATE `script_texts` SET `content_loc8` = 'Новые игрушки!' WHERE `entry` = -1595030;
UPDATE `script_texts` SET `content_loc8` = 'Это не смешно...' WHERE `entry` = -1595031;
UPDATE `script_texts` SET `content_loc8` = 'А, развлечемся!' WHERE `entry` = -1595032;
UPDATE `script_texts` SET `content_loc8` = 'Слишком поздно, герой Лордерона. Пришло время мертвых.' WHERE `entry` = -1595033;
UPDATE `script_texts` SET `content_loc8` = 'Веселье только начинается!' WHERE `entry` = -1595034;
UPDATE `script_texts` SET `content_loc8` = 'Аааа, качественный материал!' WHERE `entry` = -1595035;
UPDATE `script_texts` SET `content_loc8` = 'Не волнуйся. Я найду куда тебя приспособить.' WHERE `entry` = -1595036;
UPDATE `script_texts` SET `content_loc8` = 'Вы всего лишь часть... плана хозяина...' WHERE `entry` = -1595037;
UPDATE `script_texts` SET `content_loc8` = 'БУМ! Хе-хе-ха-ха...' WHERE `entry` = -1595038;
UPDATE `script_texts` SET `content_loc8` = 'Кровь... разрушение... ВОСХИТИТЕЛЬНО!' WHERE `entry` = -1595039;
UPDATE `script_texts` SET `content_loc8` = 'Мне нужен образец...' WHERE `entry` = -1595040;
UPDATE `script_texts` SET `content_loc8` = 'Столько силы... она будет моей!' WHERE `entry` = -1595041;
UPDATE `script_texts` SET `content_loc8` = 'Твоя плоть предает тебя!' WHERE `entry` = -1595042;
UPDATE `script_texts` SET `content_loc8` = 'Познакомьтесь с моими друзьями.' WHERE `entry` = -1595043;
UPDATE `script_texts` SET `content_loc8` = 'Жители Стратхольма! Встречайте ваших спасителей.' WHERE `entry` = -1595044;
UPDATE `script_texts` SET `content_loc8` = 'Принц Артас Менетил, в этот самый день могущественное зло поглотило твою душу. Смерть, которую ты должен был принести другим, сегодня придет за тобой.' WHERE `entry` = -1595000;
UPDATE `script_texts` SET `content_loc8` = 'Ну что ж, посмотрим, юный принц.' WHERE `entry` = -1595001;
UPDATE `script_texts` SET `content_loc8` = 'Тик-так, тик-так...' WHERE `entry` = -1595002;
UPDATE `script_texts` SET `content_loc8` = 'Слишком медленно!' WHERE `entry` = -1595003;
UPDATE `script_texts` SET `content_loc8` = 'Пора заканчивать.' WHERE `entry` = -1595004;
UPDATE `script_texts` SET `content_loc8` = 'У тебя нет будущего.' WHERE `entry` = -1595005;
UPDATE `script_texts` SET `content_loc8` = 'Пробил час нашего величайшего триумфа!' WHERE `entry` = -1595006;
UPDATE `script_texts` SET `content_loc8` = 'Тебе было суждено потерпеть поражение.' WHERE `entry` = -1595007;
UPDATE `script_texts` SET `content_loc8` = 'Да, это начало. Я ждал тебя, юный принц. Я Мал\'Ганис.' WHERE `entry` = -1595009;
UPDATE `script_texts` SET `content_loc8` = 'Как видишь, твои люди отныне принадлежат мне. Дом за домом я порабощу этот город, и огонь жизни угаснет здесь навсегда...' WHERE `entry` = -1595010;
UPDATE `script_texts` SET `content_loc8` = 'Это будет достойное испытание, принц Артас.' WHERE `entry` = -1595011;
UPDATE `script_texts` SET `content_loc8` = 'Слишком просто...' WHERE `entry` = -1595012;
UPDATE `script_texts` SET `content_loc8` = 'Темный повелитель не доволен твоим вмешательством.' WHERE `entry` = -1595013;
UPDATE `script_texts` SET `content_loc8` = 'Мне нужен Принц Артас, а не ты.' WHERE `entry` = -1595014;
UPDATE `script_texts` SET `content_loc8` = 'Анак\'Кери...' WHERE `entry` = -1595015;
UPDATE `script_texts` SET `content_loc8` = 'Мой натиск сметет силы Короля Лича...' WHERE `entry` = -1595016;
UPDATE `script_texts` SET `content_loc8` = 'Твоя смерть была напрасна, насекомое...' WHERE `entry` = -1595017;
UPDATE `script_texts` SET `content_loc8` = 'Твое время вышло!' WHERE `entry` = -1595018;
UPDATE `script_texts` SET `content_loc8` = 'Отдохни.' WHERE `entry` = -1595019;
UPDATE `script_texts` SET `content_loc8` = 'Ты выглядишь устало.' WHERE `entry` = -1595020;
UPDATE `script_texts` SET `content_loc8` = 'Я и так провел слишком много времени в этой слабой оболочке...' WHERE `entry` = -1595021;
UPDATE `script_texts` SET `content_loc8` = 'Ирел\'нарак. Я МАЛ\'ГАНИС! Я ВЕЧЕН!' WHERE `entry` = -1595022;
UPDATE `script_texts` SET `content_loc8` = 'Я лиш зря трачу тут свое время... Мне нужно собраться с силами в своем родном мире...' WHERE `entry` = -1595023;
UPDATE `script_texts` SET `content_loc8` = 'Тебе не когда не победить Короля Лича без моих войск! Я отомщу... и тебе, И ему...' WHERE `entry` = -1595024;
UPDATE `script_texts` SET `content_loc8` = 'Твое путешествие начинается, юный принц. Собирай свои войска и отправляйся в царство вечных снегов, в Нордскол. Там мы и уладим все наши дела, там ты узнаешь свою судьбу.' WHERE `entry` = -1595025;
UPDATE `script_texts` SET `content_loc8` = 'Это королевство принадлежит Плети. Только мертвые могут пройти!' WHERE `entry` = -1601011;
UPDATE `script_texts` SET `content_loc8` = 'Придти сюда было глупо с твоей стороны.' WHERE `entry` = -1601012;
UPDATE `script_texts` SET `content_loc8` = 'По приказу Ануб\'Арака!' WHERE `entry` = -1601013;
UPDATE `script_texts` SET `content_loc8` = 'Я поблагодарил бы вас… но я давно забыл, как это делается.' WHERE `entry` = -1601014;
UPDATE `script_texts` SET `content_loc8` = 'Они голодны...' WHERE `entry` = -1601015;
UPDATE `script_texts` SET `content_loc8` = 'Питомцы мои, ужин подан!' WHERE `entry` = -1601016;
UPDATE `script_texts` SET `content_loc8` = 'Приглядывайте за туннелем. Никто не должен пройти сквозь него!' WHERE `entry` = -1601017;
UPDATE `script_texts` SET `content_loc8` = 'Я слышу шаги. Будьте на чеку.' WHERE `entry` = -1601018;
UPDATE `script_texts` SET `content_loc8` = 'Я чувствую живых. Приготовится.' WHERE `entry` = -1601019;
UPDATE `script_texts` SET `content_loc8` = 'Мы в осаде! Идите в атаку и принесите обратно их трупы!' WHERE `entry` = -1601020;
UPDATE `script_texts` SET `content_loc8` = 'Мы должны защищать ворота. В атаку! Разорвите их на части!' WHERE `entry` = -1601021;
UPDATE `script_texts` SET `content_loc8` = 'Ворота должны выстоять любой ценой. Растерзайте их в клочья!' WHERE `entry` = -1601022;
UPDATE `script_texts` SET `content_loc8` = 'А-ах! Грр! Никогда не думал… что смогу освободиться от него...' WHERE `entry` = -1601004;
UPDATE `script_texts` SET `content_loc8` = 'Я буду лично пытать тебя!' WHERE `entry` = -1601003;
UPDATE `script_texts` SET `content_loc8` = 'Твой выбор сделан.' WHERE `entry` = -1601002;
UPDATE `script_texts` SET `content_loc8` = 'Вам предстоит вечная агония!' WHERE `entry` = -1601000;
UPDATE `script_texts` SET `content_loc8` = 'Скоро ты услышишь голос господина.' WHERE `entry` = -1601001;
UPDATE `script_texts` SET `content_loc8` = 'Ваша броня бесполезна против моей саранчи.' WHERE `entry` = -1601005;
UPDATE `script_texts` SET `content_loc8` = 'Чума на тебя!' WHERE `entry` = -1601007;
UPDATE `script_texts` SET `content_loc8` = 'Ауум на-л ак-к-к, ишшш!' WHERE `entry` = -1601008;
UPDATE `script_texts` SET `content_loc8` = 'Восстаньте... восстаньте и вкусите их плоти!' WHERE `entry` = -1601009;
UPDATE `script_texts` SET `content_loc8` = 'Я был королем этой империи, когда то. При жизни я был героем. В смерти я вернулся завоевателем. Теперь я снова оберегаю это королевство. Забавно неправда ли?' WHERE `entry` = -1601010;
UPDATE `script_texts` SET `content_loc8` = 'Шгла\'йос праф мх\'наус.' WHERE `entry` = -1619030;
UPDATE `script_texts` SET `content_loc8` = 'Лилх вааах, ухнагт ффшх за.' WHERE `entry` = -1619034;
UPDATE `script_texts` SET `content_loc8` = 'Как ты смеешь мешать нашей работе!' WHERE `entry` = -1595045;
UPDATE `script_texts` SET `content_loc8` = 'Мое время... истекло...' WHERE `entry` = -1595047;
UPDATE `script_texts` SET `content_loc8` = 'Как же тут холодно... Кровь стынет в жилах.' WHERE `entry` = -1668001;
UPDATE `script_texts` SET `content_loc8` = 'Что это там впереди?.. Неужели?.. Скорей, герои!' WHERE `entry` = -1668002;
UPDATE `script_texts` SET `content_loc8` = 'Ледяная Скорбь: клинок, разрушивший наше королевство...' WHERE `entry` = -1668003;
UPDATE `script_texts` SET `content_loc8` = 'Отойдите! Тот, кто коснется этого клинка, обречет себя на вечные муки! Я попытаюсь заговорить с душами, заключенными в Ледяной Скорби. Расступитесь. Чуть назад, прошу.' WHERE `entry` = -1668004;
UPDATE `script_texts` SET `content_loc8` = 'Утер! Милый Утер! Мне так жаль...' WHERE `entry` = -1668006;
UPDATE `script_texts` SET `content_loc8` = 'Артас здесь? Может, я...' WHERE `entry` = -1668008;
UPDATE `script_texts` SET `content_loc8` = 'Но если есть малейшая надежда вернуть Артаса... я должна попытаться.' WHERE `entry` = -1668010;
UPDATE `script_texts` SET `content_loc8` = 'Но как, Утер? Как мне убить моего принца? Моего...' WHERE `entry` = -1668012;
UPDATE `script_texts` SET `content_loc8` = 'Ты прав, Утер. Прости меня. Я не знаю… что на меня нашло. Мы передадим твои слова королю и рыцарям, которые сражаются с Плетью в Цитадели Ледяной Короны.' WHERE `entry` = -1668014;
UPDATE `script_texts` SET `content_loc8` = 'Кому по силам такое бремя?' WHERE `entry` = -1668017;
UPDATE `script_texts` SET `content_loc8` = 'Но может быть, еще есть надежда...' WHERE `entry` = -1668019;
UPDATE `script_texts` SET `content_loc8` = 'Ты от меня не отмахнешься, Артас! Я должна понять… Я должна знать...' WHERE `entry` = -1668042;

/*########################################
###           `creature_text`
########################################*/

UPDATE `creature_text` SET `text` = '%s бежит прочь в страхе!' WHERE `entry` = 16977;
UPDATE `creature_text` SET `text` = 'Твоя смерть близка!' WHERE `entry` = 23651;
UPDATE `creature_text` SET `text` = 'Не трогай свечу!' WHERE `entry` = 6 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Айй! Моя бежать!' WHERE `entry` = 6 AND `id` = 1;