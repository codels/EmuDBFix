DELETE FROM `gameobject_questrelation` WHERE `id` = 270;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(270, 311);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 270;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(270, 310);