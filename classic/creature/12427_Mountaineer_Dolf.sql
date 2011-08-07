SET @NPC = 12427;
UPDATE `creature_template` SET `Civilian` = 1, `RegenHealth` = 0, `faction_A` = 57, `faction_H` = 57 WHERE `entry` = @NPC;
UPDATE `creature` SET `curhealth` = 20 WHERE `id` = @NPC;