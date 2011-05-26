UPDATE `creature_template` SET
        `spell1` = 0,
        `spell2` = 0,
        `AIName` = '',
        `ScriptName` = 'boss_infinite_corruptor'
WHERE `entry` = 32273;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 32273;

DELETE FROM `script_texts` WHERE `npc_entry` = 32273;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(32273, -1595045, 'How dare you interfere with our work here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Как ты смеешь мешать нашей работе!', 0, 1, 0, 0, 'infinite SAY_AGGRO'),
(32273, -1595046, 'My work here is finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'infinite SAY_FAIL'),
(32273, -1595047, 'My time... has run out...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Мое время... истекло...', 0, 1, 0, 0, 'infinite SAY_DEATH');