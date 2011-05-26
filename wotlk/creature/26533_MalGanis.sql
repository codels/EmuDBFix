UPDATE `creature_template` SET
        `spell1` = 0,
        `spell2` = 0,
        `spell3` = 0,
        `spell4` = 0,
        `AIName` = '',
        `flags_extra` = `flags_extra` | 1,
        `ScriptName` = 'boss_mal_ganis'
WHERE `entry` = 26533;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26533;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-868, -869, -870, -871, -872, -873, -874, -875, -876);

DELETE FROM `script_texts` WHERE `npc_entry` = 26533;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(26533, -1595009, 'Yes, this is the beginning. I\'ve been waiting for you, young prince. I am Mal\'Ganis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Да, это начало. Я ждал тебя, юный принц. Я Мал\'Ганис.', 14410, 0, 0, 1, 'mal_ganis SAY_INTRO_1 | culling SAY_PHASE206'),
(26533, -1595010, 'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Как видишь, твои люди отныне принадлежат мне. Дом за домом я порабощу этот город, и огонь жизни угаснет здесь навсегда…', 14411, 0, 0, 1, 'mal_ganis SAY_INTRO_2 | culling SAY_PHASE207'),
(26533, -1595011, 'This will be a fine test...Prince Arthas...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Это будет достойное испытание, принц Артас.', 14413, 1, 0, 0, 'mal_ganis SAY_AGGRO'),
(26533, -1595012, 'All too easy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Слишком просто...', 14416, 1, 0, 0, 'mal_ganis SAY_KILL_1'),
(26533, -1595013, 'The dark lord is displeased with your interference...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Темный повелитель не доволен твоим вмешательством.', 14417, 1, 0, 0, 'mal_ganis SAY_KILL_2'),
(26533, -1595014, 'It is Prince Arthas I want... not you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мне нужен Принц Артас, а не ты.', 14418, 1, 0, 0, 'mal_ganis SAY_KILL_3'),
(26533, -1595015, 'Anak\'Keri...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14422, 1, 0, 0, 'mal_ganis SAY_SLAY_1'),
(26533, -1595016, 'My onslaught will wash over the Lich King\'s forces...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14423, 1, 0, 0, 'mal_ganis SAY_SLAY_2'),
(26533, -1595017, 'Your death is in vain, tiny mortal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14424, 1, 0, 0, 'mal_ganis SAY_SLAY_3'),
(26533, -1595018, 'Your time has come to an end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14425, 1, 0, 0, 'mal_ganis SAY_SLAY_4'),
(26533, -1595019, 'Time out...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Отдохни.', 14414, 1, 0, 0, 'mal_ganis SAY_SLEEP_1'),
(26533, -1595020, 'You seem...tired...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ты выглядишь устало.', 14415, 1, 0, 0, 'mal_ganis SAY_SLEEP_2'),
(26533, -1595021, 'I spent too much time in that weak little shell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14426, 1, 0, 0, 'mal_ganis SAY_30HEALTH'),
(26533, -1595022, '(Eredun) I AM MAL\'GANIS! I AM ETERNAL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14427, 1, 0, 0, 'mal_ganis SAY_15HEALTH'),
(26533, -1595023, 'ENOUGH! I waste my time here...I must gather my strength on the home world...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14428, 1, 0, 0, 'mal_ganis SAY_ESCAPE_SPEECH_1'),
(26533, -1595024, 'You\'ll never defeat the Lich King without my forces! I\'ll have my revenge...on him, AND you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14429, 1, 0, 0, 'mal_ganis SAY_ESCAPE_SPEECH_2'),
(26533, -1595025, 'Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Твое путешествие начинается, юный принц. Собирай свои войска и отправляйся в царство вечных снегов, в Нордскол. Там мы и уладим все наши дела, там ты узнаешь свою судьбу.', 14412, 1, 0, 1, 'mal_ganis SAY_OUTRO');