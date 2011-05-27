UPDATE `creature_template` SET
        `AIName` = '',
        `ScriptName` = 'boss_balinda'
WHERE `entry` = 11949;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11949;

DELETE FROM `script_texts` WHERE `npc_entry` = 11949 OR `entry` IN (-1810023, -1810024);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`,
`content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`,
`emote`, `comment`) VALUES
(11949, -1810023, 'Begone, uncouth scum! The Alliance shall prevail in Alterac Valley!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Прочь, подлецы! Альтеракская долина достанется Альянсу!', 0, 1, 0, 0, NULL);
(11949, -1810024, 'Filthy Frostwolf cowards! If you want a fight, you\'ll have to come to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Эй вы, жалкие трусы из Северного Волка! Хотите драться – так идите ко мне!', 0, 1, 0, 0, NULL);