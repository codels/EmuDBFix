SET @NPC = 26497;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `emote`, `comment`) VALUES
(@NPC, -1595082, 'Arthas! You can\'t just--', 12837, 1, 'culling SAY_PHASE113'),
(@NPC, -1595086, 'I\'m sorry, Arthas. I can\'t watch you do this.', 12838, 1, 'culling SAY_PHASE117');