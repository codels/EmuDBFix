DELETE FROM `script_texts` WHERE `npc_entry` = 15936 OR `entry` IN (-1533109, -1533110, -1533111, -1533112, -1533113, -1533114, -1533115, -1533116, -1533117, -1533118);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`,
`content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`,
`content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(15936, -1533118, 'Noo... o...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Неет!', 8828, 1, 0, 0, 'heigan SAY_DEATH'),
(15936, -1533117, 'Hungry worms will feast on your rotten flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Голодные черви будут пировать в ваших гниющих трупах!', 8834, 1, 0, 0, 'heigan SAY_TAUNT5'),
(15936, -1533116, 'The end is upon you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вам конец.', 8833, 1, 0, 0, 'heigan SAY_TAUNT4'),
(15936, -1533115, 'Soon... the world will tremble!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Скоро... мир содрогнется!', 8832, 1, 0, 0, 'heigan SAY_TAUNT3'),
(15936, -1533114, 'I see endless suffering, I see torment, I see rage. I see... everything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я вижу бесконечное страдание, Я вижу муки, Я вижу ярость, Я вижу... все!', 8831, 1, 0, 0, 'heigan SAY_TAUNT2'),
(15936, -1533113, 'The races of the world will perish. It is only a matter of time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Все народы этого мира исчезнут без следа. Это лиш вопрос времени.', 8830, 1, 0, 0, 'heigan SAY_TAUNT1'),
(15936, -1533112, 'Close your eyes... sleep!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Закрой глаза... Усни!', 8829, 1, 0, 0, 'heigan SAY_SLAY'),
(15936, -1533111, 'You...are next!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Пришло ваше время!', 8827, 1, 0, 0, 'heigan SAY_AGGRO3'),
(15936, -1533110, 'I see you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я вижу вас!', 8826, 1, 0, 0, 'heigan SAY_AGGRO2'),
(15936, -1533109, 'You are mine now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Теперь вы принадлежите мне!', 8825, 1, 0, 0, 'heigan SAY_AGGRO1');