DELETE FROM `gameobject_questrelation` WHERE `id` = 2083;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(2083, 26610);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 2083;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(2083, 26609);