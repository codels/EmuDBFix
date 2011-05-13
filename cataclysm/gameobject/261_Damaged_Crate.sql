DELETE FROM `gameobject_questrelation` WHERE `id` = 261;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(261, 25803);

DELETE FROM `gameobject_involvedrelation` WHERE `id` = 261;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(261, 25802);