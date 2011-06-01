SET @ENTRY = 35771;

DELETE FROM `conditions` WHERE `SourceEntry` = @ENTRY AND `SourceTypeOrReferenceId` IN (13, 17);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = @ENTRY * -1;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, @ENTRY, 2, 19, 20610, 0, @ENTRY, 0, '', NULL),
(17, 0, @ENTRY, 1, 19, 20777, 0, @ENTRY, 0, '', NULL),
(@ENTRY * -1, 0, 0, 0, 20, 20, 0, 0, 0, '', NULL);