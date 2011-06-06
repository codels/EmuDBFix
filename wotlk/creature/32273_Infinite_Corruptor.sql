SET @NPC = 32273;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `AIName` = '', `ScriptName` = 'boss_infinite_corruptor' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;