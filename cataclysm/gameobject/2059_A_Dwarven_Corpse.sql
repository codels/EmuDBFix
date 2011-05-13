DELETE FROM `gameobject_questrelation` WHERE `id` = 2059;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(2059, 26855);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 2059;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(2059, 26854);