DELETE FROM `script_texts` WHERE `npc_entry` = 29120 OR `entry` IN (-1601000, -1601001, -1601002, -1601003, -1601004, -1601005, -1601006, -1601007, -1601008, -1601009, -1601010);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`,
`content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`,
`emote`, `comment`) VALUES 
(29120, -1601004, 'Ahhh... RAAAAAGH! Never thought... I would be free of him...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'А-ах! Грр! Никогда не думал… что смогу освободиться от него…', 14069, 1, 0, 0, ''),
(29120, -1601003, 'You shall experience my torment, first-hand!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14055, 1, 0, 0, ''),
(29120, -1601002, 'You have made your choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14056, 1, 0, 0, ''),
(29120, -1601000, 'Eternal aggony awaits you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вам предстоит вечная агония!', 14054, 1, 0, 0, ''),
(29120, -1601001, 'Soon, the Master\'s voice will call to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14057, 1, 0, 0, ''),
(29120, -1601005, 'Your armor is useless againts my locusts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14060, 1, 0, 0, ''),
(29120, -1601007, 'The pestilence upon you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Чума на тебя!', 14068, 1, 0, 0, ''),
(29120, -1601008, 'Auum na-l ak-k-k-k, isshhh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ауум на-л ак-к-к, ишшш!', 14058, 1, 0, 0, ''),
(29120, -1601009, 'Come forth my brethren! Feast on their flesh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Восстаньте… восстаньте и вкусите их плоти!', 14059, 1, 0, 0, ''),
(29120, -1601010, 'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14053, 1, 0, 0, '');