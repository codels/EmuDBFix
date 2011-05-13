DELETE FROM `gameobject_questrelation` WHERE `id` = 7510;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(7510, 2399);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 7510;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(7510, 2399);