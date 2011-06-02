SET @NPC = 26497;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `emote`, `comment`) VALUES
(@NPC, -1595082, 'Arthas! You can\'t just--', 'Артас! Ты не можешь так просто…', 12837, 1, 'culling SAY_PHASE113'),
(@NPC, -1595086, 'I\'m sorry, Arthas. I can\'t watch you do this.', 'Прости, Артас. Я не могу на это смотреть.', 12838, 1, 'culling SAY_PHASE117');