DELETE FROM `gameobject_questrelation` WHERE `id` = 56;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(56, 71);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 56;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(56, 45);