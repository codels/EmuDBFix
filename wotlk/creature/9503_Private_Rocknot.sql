DELETE FROM `script_texts` WHERE `npc_entry` = 9503 OR `entry` = -1230000;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`,
`content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`,
`emote`, `comment`) VALUES
(9503, -1230000, 'Ah, hits the spot!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ох, хорошо пошло!', 0, 0, 0, 0, 'rocknot SAY_GOT_BEER');
-- need say 'Еще эля! Дайте еще!'