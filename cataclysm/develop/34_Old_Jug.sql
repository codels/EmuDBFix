DELETE FROM `gameobject_questrelation` WHERE `id` = 34;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(34, 26356);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 34;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(34, 26355);