UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	npcflag = 0,
	speed_walk = 1,
	speed_run = 1.4,
	mindmg = 422,
	maxdmg = 586,
	attackpower = 642,
	rangeattacktime = 0,
	unit_flags = 0,
	ScriptName = 'generic_vehicleAI_toc5'
WHERE `entry` IN (35637, 35633, 35768, 34658, 35636, 35638, 35635, 35640, 35641, 35634);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35637;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35637, 34705, 0, 0, 'Marshal Jacob Alerius\' Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35633;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35633, 34702, 0, 0, 'Ambrose Boltspark\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35768;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35768, 34701, 0, 0, 'Colosos\' Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 34658;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (34658, 34657, 0, 0, 'Jaelyne Evensong\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35636;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35636, 34703, 0, 0, 'Lana Stouthammer\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35638;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35638, 35572, 0, 0, 'Mokra the Skullcrusher\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35635;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35635, 35569, 0, 0, 'Eressea Dawnsinger\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35640;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35640, 35571, 0, 0, 'Runok Wildmane\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35641;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35641, 35570, 0, 0, 'Zul\'tore\'s Mount', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35634;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35634, 35617, 0, 0, 'Deathstalker Visceri\'s Mount', 6, 30000);



UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	npcflag = 0,
	speed_walk = 1,
	speed_run = 1.2,
	VehicleId = 0,
	spell1 = 0,
	spell2 = 0,
	spell3 = 0,
	spell4 = 0
WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703);

UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	npcflag = 0,
	speed_walk = 1,
	speed_run = 1.4,
	mindmg = 422,
	maxdmg = 586,
	attackpower = 642,
	scriptName = 'generic_vehicleAI_toc5',
	spell1 =0,
	spell2 = 0,
	spell3 = 0,
	spell4 = 0,
	spell5 = 0,
	spell6 = 0,
	spell7 = 0,
	rangeattacktime = 0
WHERE `entry` IN (33319, 33318, 33217, 33317, 33316, 33324, 33322, 33320, 33323, 33321);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33317;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33317, 35331, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33322;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33322, 35325, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33319;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33319, 35332, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33323;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33323, 35326, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33320;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33320, 35314, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33324;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33324, 35327, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33321;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33321, 35323, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33316;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33316, 35329, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33217;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33217, 35328, 0, 1, '', 6, 30000);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 33318;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (33318, 35330, 0, 1, '', 6, 30000);

DELETE FROM `creature_template_addon` WHERE `entry` = 35331;
DELETE FROM `creature_template_addon` WHERE `entry` = 35325;
DELETE FROM `creature_template_addon` WHERE `entry` = 35332;
DELETE FROM `creature_template_addon` WHERE `entry` = 35326;
DELETE FROM `creature_template_addon` WHERE `entry` = 35314;
DELETE FROM `creature_template_addon` WHERE `entry` = 35327;
DELETE FROM `creature_template_addon` WHERE `entry` = 35323;
DELETE FROM `creature_template_addon` WHERE `entry` = 35329;
DELETE FROM `creature_template_addon` WHERE `entry` = 35328;
DELETE FROM `creature_template_addon` WHERE `entry` = 35330;

UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	unit_flags = 33554562,
	type_flags = 0,
	spell1 = 0,
	AIName = '',
	ScriptName = ''
WHERE `entry` IN (35331, 35325, 35332, 35326, 35314, 35327, 35323, 35329, 35328, 35330);

UPDATE `creature_template` SET
	IconName = 'vehichleCursor',
	faction_A = 35,
	faction_H = 35,
	npcflag = 16777216,
	speed_walk = 1,
	speed_run = 1.4,
	unit_flags = 0,
	spell1 = 68505,
	spell2 = 62575,
	spell3 = 63010,
	spell4 = 66482
WHERE `entry` IN (35644, 36558);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 36558;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES (36558, 67830, 0, 0, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35644;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES (35644, 67830, 0, 0, 0, 1, 0, 0, 0);


UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	spell1 = 0,
	spell2 = 0,
	spell3 = 0,
	spell4 = 0
WHERE `entry` IN (35309, 35305, 35307);

UPDATE `creature_template` SET
	faction_A = 14,
	faction_H = 14,
	spell1 = 0,
	spell2 = 0,
	spell3 = 0,
	spell4 = 0
WHERE `entry` IN (35119, 34928);

DELETE FROM `vehicle_template_accessory` WHERE `entry` = 35491;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES (35491, 35451, 0, 0, 'Death Knight', 6, 30000);

UPDATE `creature_template` SET
	minlevel = 82,
	maxlevel = 82,
	exp = 2,
	faction_A = 14,
	faction_H = 14,
	npcflag = 0,
	speed_walk = 1,
	speed_run = 1.2,
	scale = 1,
	rank = 1,
	mindmg = 488,
	maxdmg = 642,
	attackpower = 782,
	dmg_multiplier = 15,
	rangeattacktime = 0,
	spell1 = 0,
	spell2 = 0,
	spell3 = 0,
	spell4 = 0,
	ScriptName = 'npc_memory',
	mechanic_immune_mask = 803160063
WHERE `entry` IN (34942, 35028, 35029, 35030, 35031, 35032, 35033, 35034, 35036, 35037, 35038, 35039, 35040, 35041, 35042, 35043, 35044, 35045, 35046, 35047, 35048, 35049, 35050, 35051, 35052);