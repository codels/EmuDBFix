-- for quest 12996 "The Warm-Up"
UPDATE `creature_template` SET
        `KillCredit1` = 30221
WHERE `entry` = 29352;

UPDATE `creature` SET
        `position_x` = 7006.46,
        `position_y` = -1767.26,
        `position_z` = 819.991,
        `orientation` = 0.275079
WHERE id = 29352;