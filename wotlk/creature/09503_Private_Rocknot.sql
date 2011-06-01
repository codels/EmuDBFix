SET @ENTRY = 9503;
DELETE FROM `script_texts` WHERE `npc_entry` = @ENTRY;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(@ENTRY, -1230000, 'Ah, hits the spot!', 'Ох, хорошо пошло!', 0, 0, 0, 0, 'rocknot SAY_GOT_BEER');
/*
Russian quote:
	'Еще эля! Дайте еще!'
*/