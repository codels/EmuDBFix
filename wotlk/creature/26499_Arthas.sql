UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'npc_arthas'
WHERE `entry` = 26499;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26499;

DELETE FROM `script_texts` WHERE `npc_entry` = 26499;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(26499, -1595070, 'Glad you could make it, Uther.', 'Я рад, что ты пришел, Утер!', 12828, 0, 0, 1, 'culling SAY_PHASE101'),
(26499, -1595072, 'As if I could forget. Listen, Uther, there\'s something about the plague you should know... ', 'Как будто я не помню. Послушай, Утер, я должен рассказать тебе кое-что про чуму…', 12829, 0, 0, 0, 'culling SAY_PHASE103'),
(26499, -1595073, 'Oh, no. We\'re too late. These people have all been infected! They may look fine now, but it\'s just a matter of time before they turn into the undead!', 'О нет. Мы опоздали. Все эти люди заражены чумой! Сейчас это еще незаметно, но скоро все они превратятся в нежить!', 12830, 0, 0, 1, 'culling SAY_PHASE104'),
(26499, -1595075, 'This entire city must be purged.', 'Весь город должен быть очищен.', 12831, 0, 0, 1, 'culling SAY_PHASE106'),
(26499, -1595077, 'Damn it, Uther! As your future king, I order you to purge this city!', 'Проклятие, Утер! Как будущий король, я приказываю тебе очистить этот город!', 12832, 1, 0, 5, 'culling SAY_PHASE108'),
(26499, -1595079, 'Then I must consider this an act of treason.', 'Тогда я буду расценивать это как измену.', 12833, 0, 0, 0, 'culling SAY_PHASE110'),
(26499, -1595081, 'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.', 'Неужели? Лорд Утер, властью, данной мне по праву наследования, я отстраняю вас от командования и освобождаю от службы ваших паладинов.', 12834, 0, 0, 1, 'culling SAY_PHASE112'),
(26499, -1595083, 'It\'s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!', 'Это уже сделано! Те из вас, кто действительно хочет спасти эту землю – за мной! Остальные – прочь с глаз моих!', 12835, 0, 0, 0, 'culling SAY_PHASE114'),
(26499, -1595085, 'Jaina?', 'Джайна?', 12836, 0, 0, 1, 'culling SAY_PHASE116'),
(26499, -1595087, 'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all Lordaeron!', 'Займите позицию, а я поведу небольшой отряд в Стратхольм и начну очищение. Мы должны изолировать и уничтожить зараженных жителей ради всего Лордерона!', 14327, 0, 0, 1, 'culling SAY_PHASE118'),
(26499, -1595088, 'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let\'s go.', 'Похоже, все готовы. Помните, эти люди заражены чумой и скоро умрут. Мы должны очистить Стратхольм и защитить Лордерон от Плети. Вперед.', 14293, 0, 0, 1, 'culling SAY_PHASE201'),
(26499, -1595090, 'I can only help you with a clean death.', 'Я могу помочь вам лишь быстрой смертью.', 14294, 0, 0, 0, 'culling SAY_PHASE203'),
(26499, -1595092, 'That was just the beginning.', 'Это было только начало.', 14295, 0, 0, 1, 'culling SAY_PHASE205'),
(26499, -1595093, 'I won\'t allow it, Mal\'Ganis! Better that these people die by my hand than serve as your slaves in death!', 'Я не допущу этого, Мал\'Ганис! Лучше эти люди погибнут от моей руки, чем станут твоими рабами после смерти!', 14296, 0, 0, 5, 'culling SAY_PHASE208'),
(26499, -1595094, 'Mal\'ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.', 'Мал\'Ганис отправит своих прислужников из Плети навстречу нам. Опытные воины и маги, ступайте и уничтожьте врагов. Я возглавлю оставшиеся войска в деле очищения Стратхольма от заразы.', 14885, 0, 0, 1, 'culling SAY_PHASE209'),
(26499, -1595095, 'Champions, meet me at town hall at once! We must take the fight to Mal\'Ganis.', 'Герои, поспешите, встретимся у городской ратуши. Мы должны сразиться с Мал\'Ганисом на его территории!', 14297, 0, 0, 1, 'culling SAY_PHASE210'),
(26499, -1595096, 'Follow me. I know the way trought.', 'Идите за мной. Я знаю дорогу.', 14298, 0, 0, 1, 'culling SAY_PHASE301'),
(26499, -1595098, 'Yes, I\'m glad i could get you before the plague.', 'Да, я рад, что я смог добраться сюда раньше чумы.', 14299, 0, 0, 1, 'culling SAY_PHASE303'),
(26499, -1595099, 'What is this sorcery?', 'Что это за магия?', 14300, 0, 0, 0, 'culling SAY_PHASE304'),
(26499, -1595101, 'Mal\'Ganis appears to have more than scourge in his arsenal. We should make haste.', 'Все офицеры должны доложить мне, когда их отряды будут готовы. Мы вступим в Стратхольм по моему приказу.', 14301, 0, 0, 0, 'culling SAY_PHASE306'),
(26499, -1595102, 'More vile sorcery! Be ready for anything.', 'Снова черная магия! Будьте готовы ко всему!', 14302, 0, 0, 0, 'culling SAY_PHASE307'),
(26499, -1595103, 'Let\'s move on.', 'Идем дальше.', 14303, 0, 0, 0, 'culling SAY_PHASE308'),
(26499, -1595104, 'Watch your backs... they have us surrounded in this hall.', 'Будьте начеку. Нас окружили.', 14304, 0, 0, 0, 'culling SAY_PHASE309'),
(26499, -1595105, 'One less obstacle to deal with.', 'Подарить тебе жизнь будет слишком рискованно.', 0, 0, 0, 0, 'culling SAY_PHASE310'),
(26499, -1595106, 'Mal\'Ganis is not making this easy...', 'Мал\'Ганис не собирается облегчить нам жизнь.', 14305, 0, 0, 0, 'culling SAY_PHASE311'),
(26499, -1595107, 'They\'re very persistent.', 'Они упрямы.', 14306, 0, 0, 0, 'culling SAY_PHASE312'),
(26499, -1595108, 'What else can be put in my way?', 'Что еще он поставит у меня на пути?', 14307, 0, 0, 0, 'culling SAY_PHASE313'),
(26499, -1595109, 'I do what i must for Lordaeron. And neither your words nor your actions will stop me.', 'Я делаю для Лордерона то, что должен, и никакие слова и поступки меня не остановят.', 14309, 0, 0, 5, 'culling SAY_PHASE315'),
(26499, -1595110, 'The quickest path to Mal\'Ganis lays behind that bookshelf ahead.', 'Кратчайший путь к Мал\'Ганису находится за тем книжным шкафом.', 14308, 0, 0, 0, 'culling SAY_PHASE401'),
(26499, -1595111, 'This will only take a moment.', 'Это займет совсем немного времени.', 14310, 0, 0, 0, 'culling SAY_PHASE402'),
(26499, -1595112, 'I believe that secret passage still works!', 'Слава Свету, что потайной ход еще работает.', 14311, 0, 0, 0, 'culling SAY_PHASE403'),
(26499, -1595113, 'Let\'s move trought here as quickly as possible. If the undead don\'t kill us the fires might.', 'Давайте пройдем этот участок как можно быстрее. Если мы не погибнем от нежити, то можем погибнуть от этого огня.', 14312, 0, 0, 0, 'culling SAY_PHASE404'),
(26499, -1595114, 'Rest a moment and clear your lungs. But we must move again soon.', 'Отдышитесь немного. Но имейте в виду, нам скоро снова в путь.', 14313, 0, 0, 0, 'culling SAY_PHASE405'),
(26499, -1595115, 'That\'s enough, we must move again. Mal\'Ganis awaits.', 'Отдых окончен, надо идти. Мал\'Ганис ждет.', 14314, 0, 0, 0, 'culling SAY_PHASE406'),
(26499, -1595116, 'At last some good luck, Market Row has not caught fire yet. Mal\'Ganis is supposed to be on Crusader Square which is just ahead. Tell me when you\'re ready to move forth.', 'Наконец нам хоть как-то повезло. Огонь еще не добрался до Торгового ряда. Мал\'Ганис должен быть на Площади рыцарей, которая находится недалеко отсюда. Скажите мне, как будете готовы идти дальше.', 14315, 0, 0, 0, 'culling SAY_PHASE407'),
(26499, -1595117, 'Justice will be done!', 'Да свершится правосудие.', 14316, 0, 0, 0, 'culling SAY_PHASE501'),
(26499, -1595118, 'We\'re going to finish this right now Mal\'Ganis... just you and me!', 'Мы покончим с этим сейчас же, Мал\'Ганис. Один на один.', 14317, 0, 0, 0, 'culling SAY_PHASE502'),
(26499, -1595119, 'I\'ll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!', 'Я отыщу тебя на краю земли! Ты слышишь меня? На краю земли!', 14318, 1, 0, 5, 'culling SAY_PHASE503'),
(26499, -1595120, 'You performed well this day. Anything that Mal\'Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend.', 'Вы славно сражались сегодня. Все, что Мал\'Ганис оставил тут – ваша награда. А мне нужно начинать готовиться к экспедиции в Нордскол.', 14319, 0, 0, 5, 'culling SAY_PHASE504');