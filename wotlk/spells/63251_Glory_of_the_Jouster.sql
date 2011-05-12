-- add cooldown
DELETE FROM `spell_proc_event` WHERE `entry` = 63251;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`,
`SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(63251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45);