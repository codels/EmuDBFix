SET @ENTRY = 6487;
DELETE FROM `script_texts` WHERE `npc_entry` = @ENTRY;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`,`emote`, `comment`) VALUES
(@ENTRY, -1189019, 'You will not defile these mysteries!', 'Я не позволю вам осквернить эти таинства!', 5842, 1, 0, 0, 'doan SAY_AGGRO'),
(@ENTRY, -1189020, 'Burn in righteous fire!', 'Горите в праведном огне!', 5843, 1, 0, 0, 'doan SAY_SPECIALAE');