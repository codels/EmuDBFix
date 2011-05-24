DELETE FROM `script_texts` WHERE `npc_entry` = 11949 OR `entry` IN (-1810023, -1810024);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_loc8`, `type`) VALUES
(11949, -1810023, 'Эй вы, жалкие трусы из Северного Волка! Хотите драться – так идите ко мне!', 1),
(11949, -1810024, 'Прочь, подлецы! Альтеракская долина достанется Альянсу!', 1);