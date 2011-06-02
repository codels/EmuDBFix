-- this is not blizzlike
SET @AREA = 4395;
DELETE FROM `spell_area` WHERE `spell` BETWEEN 70971 AND 70974;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `racemask`, `gender`, `autocast`) VALUES
(70971, @AREA, 24451, 1, 24451, 690, 1, 1),
(70972, @AREA, 24451, 1, 24451, 690, 0, 1),
(70973, @AREA, 20439, 1, 20439, 1101, 1, 1),
(70974, @AREA, 20439, 1, 20439, 1101, 0, 1);