SET @NPC = 29120;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1601004, 'Ahhh... RAAAAAGH! Never thought... I would be free of him...', 14069, 1, ''),
(@NPC, -1601003, 'You shall experience my torment, first-hand!', 14055, 1, ''),
(@NPC, -1601002, 'You have made your choice.', 14056, 1, ''),
(@NPC, -1601000, 'Eternal aggony awaits you!', 14054, 1, ''),
(@NPC, -1601001, 'Soon, the Master\'s voice will call to you.', 14057, 1, ''),
(@NPC, -1601005, 'Your armor is useless againts my locusts.', 14060, 1, ''),
(@NPC, -1601007, 'The pestilence upon you!', 14068, 1, ''),
(@NPC, -1601008, 'Auum na-l ak-k-k-k, isshhh.', 14058, 1, ''),
(@NPC, -1601009, 'Come forth my brethren! Feast on their flesh.', 14059, 1, ''),
(@NPC, -1601010, 'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes?', 14053, 1, '');