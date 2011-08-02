DELETE FROM `gameobject_questrelation` WHERE `id` = 112948;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(112948, 25819);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 112948;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(112948, 25818);