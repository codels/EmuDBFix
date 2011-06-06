SET @NPC = 15936;
DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1533118, 'Noo... o...', 8828, 1, 'heigan SAY_DEATH'),
(@NPC, -1533117, 'Hungry worms will feast on your rotten flesh!', 8834, 1, 'heigan SAY_TAUNT5'),
(@NPC, -1533116, 'The end is upon you.', 8833, 1, 'heigan SAY_TAUNT4'),
(@NPC, -1533115, 'Soon... the world will tremble!', 8832, 1, 'heigan SAY_TAUNT3'),
(@NPC, -1533114, 'I see endless suffering, I see torment, I see rage. I see... everything!', 8831, 1, 'heigan SAY_TAUNT2'),
(@NPC, -1533113, 'The races of the world will perish. It is only a matter of time.', 8830, 1, 'heigan SAY_TAUNT1'),
(@NPC, -1533112, 'Close your eyes... sleep!', 8829, 1, 'heigan SAY_SLAY'),
(@NPC, -1533111, 'You...are next!', 8827, 1, 'heigan SAY_AGGRO3'),
(@NPC, -1533110, 'I see you!', 8826, 1, 'heigan SAY_AGGRO2'),
(@NPC, -1533109, 'You are mine now!', 8825, 1, 'heigan SAY_AGGRO1');