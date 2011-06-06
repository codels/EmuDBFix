SET @NPC = 26528;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `emote`, `comment`) VALUES 
(@NPC, -1595071, 'Watch your tone with me, boy. You may be the prince, but I\'m still your superior as a paladin!', 12839, 0, 25, 'culling SAY_PHASE102'),
(@NPC, -1595074, 'What?', 12840, 0, 5, 'culling SAY_PHASE105'),
(@NPC, -1595076, 'How can you even consider that? There\'s got to be some other way.', 12841, 0, 1, 'culling SAY_PHASE107'),
(@NPC, -1595078, 'You are not my king yet, boy! Nor would I obey that command even if you were!', 12842, 1, 22, 'culling SAY_PHASE109'),
(@NPC, -1595080, 'Treason? Have you lost your mind, Arthas?', 12843, 0, 5, 'culling SAY_PHASE111'),
(@NPC, -1595084, 'You\'ve just crossed a terrible threshold, Arthas.', 12844, 0, 25, 'culling SAY_PHASE115');