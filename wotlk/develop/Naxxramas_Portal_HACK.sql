SET @GUID = 200001;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (181575, 181576, 181577, 181578);

DELETE FROM `gameobject` WHERE `id` BETWEEN 181575 AND 181578 OR `guid` BETWEEN @GUID AND @GUID + 3;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`,
`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID, 181575, 533, 3, 1, 3465.18, -3940.4, 308.79, 2.44, 0, 0, 0, 0, 604800, 100, 1),
(@GUID + 1, 181576, 533, 3, 1, 3539.02, -2936.82, 302.48, 3.14, 0, 0, 0, 0, 604800, 100, 1),
(@GUID + 2, 181577, 533, 3, 1, 2909, -4025.02, 273.48, 3.14, 0, 0, 0, 0, 604800, 100, 1),
(@GUID + 3, 181578, 533, 3, 1, 2493.02, -2921.78, 241.19, 3.14, 0, 0, 0, 0, 604800, 100, 1);