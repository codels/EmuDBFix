DELETE FROM `gameobject_questrelation` WHERE `id` = 4141;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(4141, 29024),
(4141, 29023),
(4141, 29022);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 4141;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(4141, 29023),
(4141, 29022),
(4141, 29021);