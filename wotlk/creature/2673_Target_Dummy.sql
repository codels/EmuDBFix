UPDATE `creature_template` SET
	`AIName` = '',
	`ScriptName` = 'npc_training_dummy'
WHERE `entry` = 2673;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 2673;