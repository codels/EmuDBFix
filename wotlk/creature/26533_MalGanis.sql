SET @NPC = 26533;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `spell3` = 0, `spell4` = 0, `AIName` = '', `flags_extra` = `flags_extra` | 1, `ScriptName` = 'boss_mal_ganis' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-868, -869, -870, -871, -872, -873, -874, -875, -876);

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `emote`, `comment`) VALUES 
(@NPC, -1595009, 'Yes, this is the beginning. I\'ve been waiting for you, young prince. I am Mal\'Ganis.', 14410, 0, 1, 'mal_ganis SAY_INTRO_1 | culling SAY_PHASE206'),
(@NPC, -1595010, 'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.', 14411, 0, 1, 'mal_ganis SAY_INTRO_2 | culling SAY_PHASE207'),
(@NPC, -1595011, 'This will be a fine test...Prince Arthas...', 14413, 1, 0, 'mal_ganis SAY_AGGRO'),
(@NPC, -1595012, 'All too easy...', 14416, 1, 0, 'mal_ganis SAY_KILL_1'),
(@NPC, -1595013, 'The dark lord is displeased with your interference...', 14417, 1, 0, 'mal_ganis SAY_KILL_2'),
(@NPC, -1595014, 'It is Prince Arthas I want... not you...', 14418, 1, 0, 'mal_ganis SAY_KILL_3'),
(@NPC, -1595015, 'Anak\'Keri...', 14422, 1, 0, 'mal_ganis SAY_SLAY_1'),
(@NPC, -1595016, 'My onslaught will wash over the Lich King\'s forces...', 14423, 1, 0, 'mal_ganis SAY_SLAY_2'),
(@NPC, -1595017, 'Your death is in vain, tiny mortal...', 14424, 1, 0, 'mal_ganis SAY_SLAY_3'),
(@NPC, -1595018, 'Your time has come to an end!', 14425, 1, 0, 'mal_ganis SAY_SLAY_4'),
(@NPC, -1595019, 'Time out...', 14414, 1, 0, 'mal_ganis SAY_SLEEP_1'),
(@NPC, -1595020, 'You seem...tired...', 14415, 1, 0, 'mal_ganis SAY_SLEEP_2'),
(@NPC, -1595021, 'I spent too much time in that weak little shell...', 14426, 1, 0, 'mal_ganis SAY_30HEALTH'),
(@NPC, -1595022, '(Eredun) I AM MAL\'GANIS! I AM ETERNAL!', 14427, 1, 0, 'mal_ganis SAY_15HEALTH'),
(@NPC, -1595023, 'ENOUGH! I waste my time here...I must gather my strength on the home world...', 14428, 1, 0, 'mal_ganis SAY_ESCAPE_SPEECH_1'),
(@NPC, -1595024, 'You\'ll never defeat the Lich King without my forces! I\'ll have my revenge...on him, AND you...', 14429, 1, 0, 'mal_ganis SAY_ESCAPE_SPEECH_2'),
(@NPC, -1595025, 'Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.', 14412, 1, 1, 'mal_ganis SAY_OUTRO');