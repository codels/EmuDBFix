SET @GUID = 200000;
SET @GO = 192060;

DELETE FROM `gameobject` WHERE `guid` = @GUID OR `id` = @GO;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID, @GO, 571, 1, 8, 7217.42, -3650, 819.167, 5.77902, 0, 0, 0.249422, -0.968395, 0, 0, 1);