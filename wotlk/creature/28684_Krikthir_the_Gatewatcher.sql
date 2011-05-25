DELETE FROM `script_texts` WHERE `npc_entry` = 28684 OR `entry` IN (-1601011, -1601012, -1601013, -1601014, -1601015, -1601016, -1601017, -1601018, -1601019, -1601020, -1601021, -1601022);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`,
`content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`,
`sound`, `type`, `language`, `emote`, `comment`) VALUES 
(28684, -1601011, 'This kingdom belongs to the Scourge! Only the dead may enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Это королевство принадлежит Плети. Только мертвые могут пройти!', 14075, 1, 0, 0, 'SAY_AGGRO'),
(28684, -1601012, 'You were foolish to come.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14077, 1, 0, 0, 'SAY_SLAY_1'),
(28684, -1601013, 'As Anub\'Arak commands!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14078, 1, 0, 0, 'SAY_SLAY_2'),
(28684, -1601014, 'I should be grateful. But I long ago lost the capacity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я поблагодарил бы вас… но я давно забыл, как это делается.', 14087, 1, 0, 0, 'SAY_DEATH'),
(28684, -1601015, 'They hunger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Они голодны…', 14085, 1, 0, 0, 'SAY_SWARM_1'),
(28684, -1601016, 'Dinner time, my pets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Питомцы мои, ужин подан!', 14086, 1, 0, 0, 'SAY_SWARM_2'),
(28684, -1601017, 'Keep an eye on the tunnel. We must not let anyone through!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Приглядывайте за туннелем. Никто не должен пройти сквозь него!', 14082, 1, 0, 0, 'SAY_PREFIGHT_1'),
(28684, -1601018, 'I hear footsteps. Be on your guard.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14083, 1, 0, 0, 'SAY_PREFIGHT_2'),
(28684, -1601019, 'I sense the living. Be ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14084, 1, 0, 0, 'SAY_PREFIGHT_3'),
(28684, -1601020, 'We are besieged. Strike out and bring back their corpses!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мы в осаде! Идите в атаку и принесите обратно их трупы!', 14079, 1, 0, 0, 'SAY_SEND_GROUP_1'),
(28684, -1601021, 'We must hold the gate. Attack! Tear them limb from limb!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14080, 1, 0, 0, 'SAY_SEND_GROUP_2'),
(28684, -1601022, 'The gate must be protected at all costs. Rip them to shreds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ворота должны выстоять любой ценой. Растерзайте их в клочья!', 14081, 1, 0, 0, 'SAY_SEND_GROUP_3');