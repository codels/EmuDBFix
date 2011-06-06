SET @NPC = 28684;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(@NPC, -1601011, 'This kingdom belongs to the Scourge! Only the dead may enter.', 14075, 1, 0, 0, 'SAY_AGGRO'),
(@NPC, -1601012, 'You were foolish to come.', 14077, 1, 0, 0, 'SAY_SLAY_1'),
(@NPC, -1601013, 'As Anub\'Arak commands!', 14078, 1, 0, 0, 'SAY_SLAY_2'),
(@NPC, -1601014, 'I should be grateful. But I long ago lost the capacity.', 14087, 1, 0, 0, 'SAY_DEATH'),
(@NPC, -1601015, 'They hunger.', 14085, 1, 0, 0, 'SAY_SWARM_1'),
(@NPC, -1601016, 'Dinner time, my pets.', 14086, 1, 0, 0, 'SAY_SWARM_2'),
(@NPC, -1601017, 'Keep an eye on the tunnel. We must not let anyone through!', 14082, 1, 0, 0, 'SAY_PREFIGHT_1'),
(@NPC, -1601018, 'I hear footsteps. Be on your guard.', 14083, 1, 0, 0, 'SAY_PREFIGHT_2'),
(@NPC, -1601019, 'I sense the living. Be ready.', 14084, 1, 0, 0, 'SAY_PREFIGHT_3'),
(@NPC, -1601020, 'We are besieged. Strike out and bring back their corpses!', 14079, 1, 0, 0, 'SAY_SEND_GROUP_1'),
(@NPC, -1601021, 'We must hold the gate. Attack! Tear them limb from limb!', 14080, 1, 0, 0, 'SAY_SEND_GROUP_2'),
(@NPC, -1601022, 'The gate must be protected at all costs. Rip them to shreds!', 14081, 1, 0, 0, 'SAY_SEND_GROUP_3');