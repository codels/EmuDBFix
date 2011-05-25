DELETE FROM `script_texts` WHERE `npc_entry` = 6487 OR `entry` IN (-1189019, -1189020);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`,
`content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`,
`emote`, `comment`) VALUES
(6487, -1189019, 'You will not defile these mysteries!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я не позволю вам осквернить эти таинства!', 5842, 1, 0, 0, 'doan SAY_AGGRO'),
(6487, -1189020, 'Burn in righteous fire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Горите в праведном огне!', 5843, 1, 0, 0, 'doan SAY_SPECIALAE');