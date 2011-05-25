DELETE FROM `script_texts` WHERE `npc_entry` = 15954 OR `entry` IN (-1533075, -1533076, -1533077, -1533078, -1533079, -1533080, -1533081);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`,
`content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`,
`sound`, `type`, `language`, `emote`, `comment`) VALUES 
(15954, -1533080, 'Breathe no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Этот вздох был для тебя последним!', 8850, 1, 0, 0, 'noth SAY_SLAY2'),
(15954, -1533081, 'I will serve the master... in... death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я буду служить господину... даже после... смерти!', 8848, 1, 0, 0, 'noth SAY_DEATH'),
(15954, -1533079, 'My task is done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Дело сделано!', 8849, 1, 0, 0, 'noth SAY_SLAY1'),
(15954, -1533077, 'Die, trespasser!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Смерть, чужакам!', 8847, 1, 0, 0, 'noth SAY_AGGRO3'),
(15954, -1533078, 'Rise, my soldiers! Rise and fight once more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Встаньте, мои войны! Встаньте и сражайтесь вновь! ', 8851, 1, 0, 0, 'noth SAY_SUMMON'),
(15954, -1533076, 'Your life is forfeit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Прощайся с жизнью!', 8846, 1, 0, 0, 'noth SAY_AGGRO2'),
(15954, -1533075, 'Glory to the master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Слава господину!', 8845, 1, 0, 0, 'noth SAY_AGGRO1');