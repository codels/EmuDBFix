SET @NPC = 9503;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `comment`) VALUES
(@NPC, -1230000, 'Ah, hits the spot!', 'rocknot SAY_GOT_BEER');