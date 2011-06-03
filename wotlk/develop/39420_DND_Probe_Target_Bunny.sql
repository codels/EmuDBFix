SET @GUID = 300000;
SET @NPC = 39420;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = @NPC;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID + 8 OR `id` = @NPC;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`,
`orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`,
`unit_flags`, `dynamicflags`) VALUES 
(@GUID, @NPC, 0, 1, 1, 0, 0, -5018.89, 544.229, 474.327, 4.17134, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 1, @NPC, 0, 1, 1, 0, 0, -5272.16, 471.594, 386.891, 4.17134, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 2, @NPC, 0, 1, 1, 0, 0, -5125.27, 593.856, 461.77, 3.35103, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 3, @NPC, 0, 1, 1, 0, 0, -5159.71, 629.781, 466.692, 4.66003, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 4, @NPC, 0, 1, 1, 0, 0, -5223.38, 625.948, 456.428, 4.38078, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 5, @NPC, 0, 1, 1, 0, 0, -5299.33, 466.906, 386.692, 4.17134, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 6, @NPC, 0, 1, 1, 0, 0, -5299.29, 554.823, 386.442, 4.17134, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 7, @NPC, 0, 1, 1, 0, 0, -5304.75, 665.599, 447.206, 4.69494, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
(@GUID + 8, @NPC, 0, 1, 1, 0, 0, -5349.81, 648.625, 443.591, 4.97419, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);