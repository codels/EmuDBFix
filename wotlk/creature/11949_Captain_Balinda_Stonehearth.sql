SET @NPC = 11949;
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_balinda' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `type`, `comment`) VALUES
(@NPC, -1810023, 'Begone, uncouth scum! The Alliance shall prevail in Alterac Valley!', 'Прочь, подлецы! Альтеракская долина достанется Альянсу!', 1, 'balinda YELL_AGGRO'),
(@NPC, -1810024, 'Filthy Frostwolf cowards! If you want a fight, you\'ll have to come to me!', 'Эй вы, жалкие трусы из Северного Волка! Хотите драться – так идите ко мне!', 1, 'balinda YELL_EVADE');