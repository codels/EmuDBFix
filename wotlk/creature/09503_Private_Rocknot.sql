SET @NPC = 9503;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `comment`) VALUES
(@NPC, -1230000, 'Ah, hits the spot!', 'Ох, хорошо пошло!', 'rocknot SAY_GOT_BEER');
/*
Russian quote:
	'Еще эля! Дайте еще!'
*/