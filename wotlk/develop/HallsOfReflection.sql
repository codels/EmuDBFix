DELETE FROM `creature` WHERE `id` IN (37225, 36955, 37554, 38177, 38173, 38176, 38175, 38172);

-- not blizzlike, need removeUnitFlags in kernel.
UPDATE `creature_template` SET `unit_flags` = 64 WHERE `entry` IN (
38172,
38173,
38175,
38176,
38177,
38524,
38525,
38563,
38544,
38564
);

SET @GUID = 300009; -- read info.txt
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID + 3 OR `id` IN (37221, 37223, 38112, 38113);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`,
`orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(@GUID, 37221, 668, 3, 1, 0, 0, 5260.82, 1946.07, 707.695, 2.40277, 86400, 0, 0, 4032000, 881400),
(@GUID + 1, 37223, 668, 3, 1, 0, 0, 5260.82, 1946.07, 707.695, 2.40277, 86400, 0, 0, 6972500, 85160),
(@GUID + 2, 38112, 668, 3, 1, 0, 0, 5275.3, 2038.9, 709.319, 5.56401, 86400, 0, 0, 301974, 0),
(@GUID + 3, 38113, 668, 3, 1, 0, 0, 5343.38, 1974.24, 709.32, 2.42398, 86400, 0, 0, 431392, 0);