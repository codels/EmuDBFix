DELETE FROM `gameobject_questrelation` WHERE `id` = 36;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(36, 26355);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 36;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(36, 26354);