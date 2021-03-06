-- spell 71203 - in kernel.

/*#####################################
####      Pustulating Horror
#####################################*/

SET @NPC = 10404;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 2, 0, 100, 0, 0, 10, 5100, 5200, 11, 71088, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Pustulating Horror - Cast Blight Bomb'),
(@NPC, 0, 1, 0, 0, 0, 100, 10, 1500, 3000, 5500, 7000, 11, 71089, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Pustulating Horror - Cast Bubbling Pus (10)'),
(@NPC, 0, 2, 0, 0, 0, 100, 20, 1500, 3000, 5500, 7000, 11, 71090, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Pustulating Horror - Cast Bubbling Pus (25)');

/*#####################################
####     Servant of the Throne
#####################################*/

SET @NPC = 36724;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3500, 5000, 6500, 9000, 11, 71029, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Servant of the Throne - Cast Glacial Blast');

/*#####################################
####    Nerub'ar Broodkeeper
#####################################*/

SET @NPC = 36725;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 14, 0, 100, 0, 50000, 39, 7500, 10000, 11, 71020, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Dark Mending'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 5500, 7000, 10000, 15000, 11, 70980, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Web Wrap'),
(@NPC, 0, 2, 0, 0, 0, 100, 0, 100, 1000, 2100, 2300, 11, 70965, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Broodkeeper - Cast Crypt Scarabs');

/*#####################################
####     Deathspeaker Servant
#####################################*/

SET @NPC = 36805;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 2500, 4000, 7500, 15000, 11, 69405, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Consuming Shadows'),
(@NPC, 0, 1, 0, 0, 0, 100, 10, 500, 3000, 7500, 10000, 11, 69404, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Curse of Agony'),
(@NPC, 0, 2, 0, 0, 0, 100, 10, 1500, 2000, 2600, 2700, 11, 69576, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Chaos Bolt'),
(@NPC, 0, 3, 0, 0, 0, 100, 20, 500, 3000, 5000, 75000, 11, 71112, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Curse of Agony'),
(@NPC, 0, 4, 0, 0, 0, 100, 20, 1500, 2000, 2600, 2700, 11, 71108, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Servant - Cast Chaos Bolt');

/*#####################################
####     Deathspeaker Disciple
#####################################*/

SET @NPC = 36807;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 5000, 7500, 5000, 7500, 11, 69391, 0, 0, 0, 0, 0, 11, 0, 30, 0, 0, 0, 0, 0, 'Deathspeaker Disciple - Cast Dark Blessing'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 500, 1000, 2100, 2300, 11, 69387, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Disciple - Cast Shadow Bolt'),
(@NPC, 0, 2, 0, 14, 10, 100, 0, 80000, 40, 4500, 6000, 11, 69389, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Disciple - Cast Shadow Mend (10)'),
(@NPC, 0, 3, 0, 14, 20, 100, 0, 150000, 40, 4500, 6000, 11, 71107, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Disciple - Cast Shadow Mend (25)');

/*#####################################
####     Deathspeaker Zealot
#####################################*/

SET @NPC = 36808;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 1500, 3000, 6000, 6500, 11, 69492, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Zealot - Cast Shadow Cleave');

/*#####################################
####     Deathspeaker Attendant
#####################################*/

SET @NPC = 36811;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 500, 1500, 2100, 2300, 11, 69387, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Attendant - Cast Shadow Bolt'),
(@NPC, 0, 1, 0, 0, 0, 100, 10, 3500, 5000, 6500, 7000, 11, 69355, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Attendant - Cast Shadow Nova (10)'),
(@NPC, 0, 2, 0, 0, 0, 100, 20, 3500, 5000, 6500, 7000, 11, 71106, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker Attendant - Cast Shadow Nova (25)');

/*#####################################
####     Deathspeaker High Priest
#####################################*/

SET @NPC = 36829;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 75, 69491, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker High Priest - Add Aura of Darkness'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 1500, 3000, 8500, 11000, 11, 69483, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Deathspeaker High Priest - Cast Dark Reckoning');

/*#####################################
####      Decaying Colossus
#####################################*/

SET @NPC = 36880;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 10, 5000, 8000, 5000, 8000, 11, 71114, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Decaying Colossus - Cast Massive Stomp (10)'),
(@NPC, 0, 1, 0, 0, 0, 100, 20, 5000, 8000, 5000, 8000, 11, 71115, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Decaying Colossus - Cast Massive Stomp (25)');

/*#####################################
####     Deathbound Ward
#####################################*/

SET @NPC = 37007;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 6500, 7000, 15000, 20000, 11, 71022, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Disrupting Shout'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 2000, 3500, 11, 71021, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Deathbound Ward - Cast Saber Lash');

/*#####################################
####     The Damned
#####################################*/

SET @NPC = 37011;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 6, 0, 100, 1, 0, 0, 0, 0, 11, 70961, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Shattered Bones on death'),
(@NPC, 0, 1, 0, 2, 0, 100, 0, 5, 30, 15000, 20000, 75, 70960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'The Damned - Cast Bone Flurry at 5-30%');

/*#####################################
####    Ancient Skeletal Soldier
#####################################*/

SET @NPC = 37012;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 7500, 10000, 11, 70964, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ancient Skeletal Soldier - Cast Shield Bash');

/*#####################################
####      Blighted Abomination
#####################################*/

SET @NPC = 37022;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 500, 1500, 1500, 2000, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blighted Abomination - Cast Cleave'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 3500, 5000, 15000, 20000, 11, 71150, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blighted Abomination - Cast Plague Cloud'),
(@NPC, 0, 2, 0, 9, 0, 100, 0, 8, 40, 1500, 3000, 11, 71140, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Blighted Abomination - Cast Scourge Hook');

/*#####################################
####       Plague Scientist
#####################################*/

SET @NPC = 37023;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 10000, 15000, 11, 71103, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Plague Scientist - Cast Combobulating Spray'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 500, 1500, 2600, 2700, 11, 73079, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Plague Scientist - Cast Plague Blast'),
(@NPC, 0, 2, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 11, 69871, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Plague Scientist - Cast Plague Stream');

/*#####################################
####           Stinky
#####################################*/

SET @NPC = 37025;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_stinky_icc' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;

/*#####################################
####      Vengeful Fleshreaper
#####################################*/

SET @NPC = 37038;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 9, 0, 100, 0, 5, 30, 6000, 8000, 11, 71164, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vengeful Fleshreaper - Cast Leaping Face Maul');

/*#####################################
####         Val'kyr Herald
#####################################*/

SET @NPC = 37098;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 10, 2500, 4000, 2500, 4000, 11, 71906, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Val\'kyr Herald - Cast Severed Essence (10 / 10H)'),
(@NPC, 0, 1, 0, 0, 0, 100, 20, 2500, 4000, 2500, 4000, 11, 71942, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Val\'kyr Herald - Cast Severed Essence (25 / 25H)');

/*#####################################
####         Ymirjar Warlord
#####################################*/

SET @NPC = 37133;

UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = 'npc_frostwing_vrykul' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 9, 0, 100, 0, 0, 10, 2100, 2200, 11, 41056, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ymirjar Warlord - Cast Whirlwind');

/*#####################################
####        Ymirjar Huntress
#####################################*/

SET @NPC = 37134;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_frostwing_vrykul' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;

/*#####################################
####           Precious
#####################################*/

SET @NPC = 37217;

UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'npc_precious_icc' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;

/*#####################################
####       Darkfallen Advisor
#####################################*/

SET @NPC = 37571;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 10, 500, 1000, 1100, 1200, 11, 72057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Advisor - Cast Lich Slap (10 / 10H)'),
(@NPC, 0, 1, 0, 0, 0, 100, 20, 500, 1000, 1100, 1200, 11, 72421, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Advisor - Cast Lich Slap (25 / 25H)'),
(@NPC, 0, 2, 0, 15, 0, 100, 0, 30, 30000, 45000, 0, 11, 72065, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Advisor - Cast Shroud of Protection'),
(@NPC, 0, 3, 0, 15, 0, 100, 0, 30, 15000, 30000, 0, 11, 72066, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Advisor - Cast Shroud of Spell Warding');

/*#####################################
####    Darkfallen Blood Knight
#####################################*/

SET @NPC = 37595;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;

-- Spell [70450] Blood Mirror (need?)
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 6000, 7000, 30000, 40000, 11, 70299, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Blood Knight - Cast Siphon Essence'),
(@NPC, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 71736, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Blood Knight - Cast Vampiric Aura'),
(@NPC, 0, 2, 0, 0, 0, 100, 0, 500, 1000, 1500, 1600, 11, 70437, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Blood Knight - Cast Unholy Strike');

/*#####################################
####      Darkfallen Commander
#####################################*/

SET @NPC = 37662;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 30000, 31000, 11, 70750, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Commander - Cast Battle Shout'),
(@NPC, 0, 1, 0, 9, 0, 100, 10, 10, 30, 3000, 4000, 11, 70449, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Commander - Cast Vampire Rush (10 / 10H)'),
(@NPC, 0, 2, 0, 9, 0, 100, 20, 10, 30, 3000, 4000, 11, 71155, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Commander - Cast Vampire Rush (25 / 25H)');

/*#####################################
####        Darkfallen Noble
#####################################*/

SET @NPC = 37663;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 6000, 7000, 30000, 40000, 11, 70299, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Noble - Cast Siphon Essence'),
(@NPC, 0, 1, 0, 0, 0, 100, 0, 3500, 5000, 9000, 11000, 11, 70645, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Noble - Cast Chains of Shadow'),
(@NPC, 0, 2, 0, 0, 0, 100, 10, 500, 1500, 2100, 2200, 11, 72960, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Noble - Cast Shadow Bolt (10 / 10H)'),
(@NPC, 0, 3, 0, 0, 0, 100, 20, 500, 1500, 2100, 2200, 11, 72961, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Noble - Cast Shadow Bolt (25 / 25H)');

/*#####################################
####       Darkfallen Archmage
#####################################*/

SET @NPC = 37664;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 10, 3500, 5000, 7500, 10000, 11, 70407, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Blast Wave (10 / 10H)'),
(@NPC, 0, 1, 0, 0, 0, 100, 20, 3500, 5000, 7500, 10000, 11, 71151, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Blast Wave (25 / 25H)'),
(@NPC, 0, 2, 0, 0, 0, 100, 10, 100, 400, 3100, 3300, 11, 70409, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Fireball (10 / 10H)'),
(@NPC, 0, 3, 0, 0, 0, 100, 20, 100, 400, 3100, 3300, 11, 71153, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Fireball (25 / 25H)'),
(@NPC, 0, 4, 0, 0, 0, 100, 0, 5000, 7000, 11000, 14000, 11, 70410, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Polymorph: Spider'),
(@NPC, 0, 5, 0, 4, 0, 100, 10, 0, 0, 0, 0, 11, 70408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Amplify Magic  on Aggro (10 / 10H)'),
(@NPC, 0, 6, 0, 4, 0, 100, 20, 0, 0, 0, 0, 11, 72336, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Amplify Magic  on Aggro (25 / 25H)'),
(@NPC, 0, 7, 0, 15, 0, 100, 10, 40, 7500, 10000, 0, 11, 70408, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Amplify Magic (10 / 10H)'),
(@NPC, 0, 8, 0, 15, 0, 100, 20, 40, 7500, 10000, 0, 11, 72336, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Archmage - Cast Amplify Magic (25 / 25H)');

/*#####################################
####     Darkfallen Lieutenant
#####################################*/

SET @NPC = 37665;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 15000, 20000, 11, 70423, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Lieutenant - Cast Vampiric Curse'),
(@NPC, 0, 1, 0, 9, 0, 100, 10, 0, 10, 2500, 5000, 11, 70435, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Lieutenant - Cast Rend Flesh (10 / 10H)'),
(@NPC, 0, 2, 0, 9, 0, 100, 20, 0, 10, 2500, 5000, 11, 71154, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Lieutenant - Cast Rend Flesh (25 / 25H)');

/*#####################################
####     Darkfallen Tactician
#####################################*/

SET @NPC = 37666;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(@NPC, 0, 0, 0, 9, 0, 100, 0, 0, 5, 1500, 1600, 11, 70437, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Tactician - Cast Unholy Strike'),
(@NPC, 0, 1, 2, 0, 0, 100, 0, 7000, 8000, 15000, 20000, 11, 70431, 3, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Tactician - Cast Shadowstep'),
(@NPC, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 70432, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkfallen Tactician - Cast Blood Sap');

/*#####################################
####     Lord Marrowgar
#####################################*/

-- 10N
UPDATE `creature_template` SET `dmg_multiplier` = 75, `baseattacktime` = 1500 WHERE `entry` = 36612;
-- 25N
UPDATE `creature_template` SET `dmg_multiplier` = 95, `baseattacktime` = 1500 WHERE `entry` = 37957;
-- 10H
UPDATE `creature_template` SET `dmg_multiplier` = 85, `baseattacktime` = 1500 WHERE `entry` = 37958;
-- 25H
UPDATE `creature_template` SET `dmg_multiplier` = 105, `baseattacktime` = 1500 WHERE `entry` = 37959;