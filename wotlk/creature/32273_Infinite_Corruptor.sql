SET @NPC = 32273;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `AIName` = '', `ScriptName` = 'boss_infinite_corruptor' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1595045, 'How dare you interfere with our work here!', 0, 1, 'infinite SAY_AGGRO'),
(@NPC, -1595046, 'My work here is finished!', 0, 1, 'infinite SAY_FAIL'),
(@NPC, -1595047, 'My time... has run out...', 0, 1, 'infinite SAY_DEATH');