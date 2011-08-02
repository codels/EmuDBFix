DELETE FROM `gameobject_questrelation` WHERE `id` = 259;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(259, 25805);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 259;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(259, 25804);