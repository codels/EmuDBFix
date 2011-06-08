SET @NPC = 30099;
SET @GUID = 300013;

DELETE FROM `creature` WHERE `guid` = @GUID OR `id` = @NPC;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`,
`orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`) VALUES
(@GUID, @NPC, 571, 1, 4, 24531, 0, 7183.29, -3519.86, 827.412, 0.034907, 300, 0, 0, 50400);