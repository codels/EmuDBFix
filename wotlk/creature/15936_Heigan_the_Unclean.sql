SET @NPC = 15936;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1533118, 'Noo... o...', 'Неет!', 8828, 1, 'heigan SAY_DEATH'),
(@NPC, -1533117, 'Hungry worms will feast on your rotten flesh!', 'Голодные черви будут пировать в ваших гниющих трупах!', 8834, 1, 'heigan SAY_TAUNT5'),
(@NPC, -1533116, 'The end is upon you.', 'Вам конец.', 8833, 1, 'heigan SAY_TAUNT4'),
(@NPC, -1533115, 'Soon... the world will tremble!', 'Скоро... мир содрогнется!', 8832, 1, 'heigan SAY_TAUNT3'),
(@NPC, -1533114, 'I see endless suffering, I see torment, I see rage. I see... everything!', 'Я вижу бесконечное страдание, Я вижу муки, Я вижу ярость, Я вижу... все!', 8831, 1, 'heigan SAY_TAUNT2'),
(@NPC, -1533113, 'The races of the world will perish. It is only a matter of time.', 'Все народы этого мира исчезнут без следа. Это лиш вопрос времени.', 8830, 1, 'heigan SAY_TAUNT1'),
(@NPC, -1533112, 'Close your eyes... sleep!', 'Закрой глаза... Усни!', 8829, 1, 'heigan SAY_SLAY'),
(@NPC, -1533111, 'You...are next!', 'Пришло ваше время!', 8827, 1, 'heigan SAY_AGGRO3'),
(@NPC, -1533110, 'I see you!', 'Я вижу вас!', 8826, 1, 'heigan SAY_AGGRO2'),
(@NPC, -1533109, 'You are mine now!', 'Теперь вы принадлежите мне!', 8825, 1, 'heigan SAY_AGGRO1');