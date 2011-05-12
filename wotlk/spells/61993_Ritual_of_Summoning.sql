-- disable spell for battleground & arena
DELETE FROM `disables` WHERE `sourceType` = 0 AND `entry` = 61993;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 61993, 17, '30,489,529,559,562,566,572,607,617,618,628', '', 'spell \"Ritual of Summoning\"');