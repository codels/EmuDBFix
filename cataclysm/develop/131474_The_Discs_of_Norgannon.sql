DELETE FROM `gameobject_questrelation` WHERE `id` = 131474;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(131474, 2280),
(131474, 2278);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 131474;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(131474, 2278);