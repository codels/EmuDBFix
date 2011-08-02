DELETE FROM `gameobject_questrelation` WHERE `id` = 142195;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(142195, 25366);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 142195;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(142195, 25365);