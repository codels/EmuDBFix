SET @NPC = 29120;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1601004, 'Ahhh... RAAAAAGH! Never thought... I would be free of him...', 'А-ах! Грр! Никогда не думал… что смогу освободиться от него…', 14069, 1, ''),
(@NPC, -1601003, 'You shall experience my torment, first-hand!', 'Я буду лично пытать тебя!', 14055, 1, ''),
(@NPC, -1601002, 'You have made your choice.', 'Твой выбор сделан.', 14056, 1, ''),
(@NPC, -1601000, 'Eternal aggony awaits you!', 'Вам предстоит вечная агония!', 14054, 1, ''),
(@NPC, -1601001, 'Soon, the Master\'s voice will call to you.', 'Скоро ты услышишь голос господина.', 14057, 1, ''),
(@NPC, -1601005, 'Your armor is useless againts my locusts.', 'Ваша броня бесполезна против моей саранчи.', 14060, 1, ''),
(@NPC, -1601007, 'The pestilence upon you!', 'Чума на тебя!', 14068, 1, ''),
(@NPC, -1601008, 'Auum na-l ak-k-k-k, isshhh.', 'Ауум на-л ак-к-к, ишшш!', 14058, 1, ''),
(@NPC, -1601009, 'Come forth my brethren! Feast on their flesh.', 'Восстаньте… восстаньте и вкусите их плоти!', 14059, 1, ''),
(@NPC, -1601010, 'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes?', 'Я был королем этой империи, когда то. При жизни я был героем. В смерти я вернулся завоевателем. Теперь я снова оберегаю это королевство. Забавно неправда ли?', 14053, 1, '');