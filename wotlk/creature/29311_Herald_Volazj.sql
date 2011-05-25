DELETE FROM `script_texts` WHERE `npc_entry` = 29311 OR `entry` IN (-1619030, -1619031, -1619032, -1619033, -1619034, -1619035, -1619036);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`,
`content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`,
`sound`, `type`, `language`, `emote`, `comment`) VALUES 
(29311, -1619030, 'Shgla\'yos plahf mh\'naus.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Шгла\'йос праф мх\'наус.', 0, 0, 0, 0, 'Herald Volazj SAY_AGGRO'),
(29311, -1619034, 'Iilth vwah, uhn\'agth fhssh za.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Лилх вааах, ухнагт ффшх за.', 0, 0, 0, 0, 'Herald Volazj SAY_DEATH_1'),
(29311, -1619031, 'Ywaq puul skshgn: on\'ma yeh\'glu zuq.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_1'),
(29311, -1619032, 'Ywaq ma phgwa\'cul hnakf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_2'),
(29311, -1619033, 'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg\'fhn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_3');