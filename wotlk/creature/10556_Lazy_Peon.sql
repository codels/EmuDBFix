UPDATE `creature_template` SET
	`AIName` = '',
	`ScriptName` = 'npc_lazy_peon'
WHERE `entry` = 10556;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10556;