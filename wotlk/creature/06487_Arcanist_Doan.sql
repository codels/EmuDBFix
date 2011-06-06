SET @NPC = 6487;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `comment`) VALUES
(@NPC, -1189019, 'You will not defile these mysteries!', 5842, 1, 'doan SAY_AGGRO'),
(@NPC, -1189020, 'Burn in righteous fire!', 5843, 1, 'doan SAY_SPECIALAE');