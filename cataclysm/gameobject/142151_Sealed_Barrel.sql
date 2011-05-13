DELETE FROM `gameobject_questrelation` WHERE `id` = 142151;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(142151, 25804);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 142151;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(142151, 25803);