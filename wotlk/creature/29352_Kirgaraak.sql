SET @NPC = 29352;
UPDATE `creature_template` SET `KillCredit1` = 30221 WHERE `entry` = @NPC;
UPDATE `creature` SET `position_x` = 7006.46, `position_y` = -1767.26, `position_z` = 819.991, `orientation` = 0.275079 WHERE id = @NPC;