SET @NPC = 29311;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1619030, 'Shgla\'yos plahf mh\'naus.', 'Шгла\'йос праф мх\'наус.', 0, 0, 'Herald Volazj SAY_AGGRO'),
(@NPC, -1619034, 'Iilth vwah, uhn\'agth fhssh za.', 'Лилх вааах, ухнагт ффшх за.', 0, 0, 'Herald Volazj SAY_DEATH_1'),
(@NPC, -1619031, 'Ywaq puul skshgn: on\'ma yeh\'glu zuq.', NULL, 0, 0, 'Herald Volazj SAY_SLAY_1'),
(@NPC, -1619032, 'Ywaq ma phgwa\'cul hnakf.', NULL, 0, 0, 'Herald Volazj SAY_SLAY_2'),
(@NPC, -1619033, 'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg\'fhn.', NULL, 0, 0, 'Herald Volazj SAY_SLAY_3');