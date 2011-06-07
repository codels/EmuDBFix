SET @NPC = 28659;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @NPC;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = @NPC;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 28667;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 28667;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 28668;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 28668;

UPDATE `creature_template` SET `unit_flags` = 32832 WHERE `entry` = 28668;

DELETE FROM `creature` WHERE `id` IN (28667, 28668);

DELETE FROM `creature_questrelation` WHERE `id` IN (28667, 28668);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(28667, 12689),
(28667, 12695),
(28668, 12582),
(28668, 12692);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 28659 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES 
(28659, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set phase 1 when reset'),
(28659, 0, 1, 2, 61, 1, 100, 0, 0, 0, 0, 0, 12, 28668, 5, 0, 0, 0, 0, 8, 0, 0, 0, 5610.93, 3782.19, -92.6264, 0, 'summon'),
(28659, 0, 2, 3, 61, 1, 100, 0, 0, 0, 0, 0, 12, 28667, 5, 0, 0, 0, 0, 8, 0, 0, 0, 5616.62, 3792.65, -91.5547, 0, 'summon'),
(28659, 0, 3, 4, 61, 1, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set faction 14'),
(28659, 0, 4, 0, 61, 1, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set phase 2'),
(28659, 0, 5, 6, 2, 2, 100, 1, 0, 30, 0, 0, 11, 52185, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'immune'),
(28659, 0, 6, 7, 61, 2, 100, 0, 0, 0, 0, 0, 28, 52182, 0, 0, 0, 0, 0, 11, 28667, 30, 0, 0, 0, 0, 0, 'remove ice'),
(28659, 0, 7, 0, 61, 2, 100, 0, 0, 0, 0, 0, 28, 52182, 0, 0, 0, 0, 0, 11, 28668, 30, 0, 0, 0, 0, 0, 'remove ice'),
(28659, 0, 8, 9, 35, 2, 100, 0, 0, 0, 0, 0, 28, 52185, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'remove immune from lich'),
(28659, 0, 9, 10, 61, 2, 100, 0, 0, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 28667, 30, 0, 0, 0, 0, 0, 'set data 2 for minion'),
(28659, 0, 10, 0, 61, 2, 100, 0, 0, 0, 0, 0, 45, 0, 2, 0, 0, 0, 0, 11, 28668, 30, 0, 0, 0, 0, 0, 'set data 2 for minion'),
(28659, 0, 11, 12, 7, 2, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 28667, 30, 0, 0, 0, 0, 0, 'set data 1 when evade'),
(28659, 0, 12, 13, 61, 2, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 28668, 30, 0, 0, 0, 0, 0, 'set data 1 when evade'),
(28659, 0, 13, 0, 61, 2, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set phase 1 when evade'),
(28659, 0, 14, 1, 1, 1, 100, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'link event 1'),
(28659, 0, 15, 0, 0, 2, 100, 0, 1000, 1000, 25000, 25000, 11, 11831, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28659, 0, 16, 0, 0, 2, 100, 0, 500, 1000, 3100, 3500, 11, 15530, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28659, 0, 17, 0, 0, 2, 100, 0, 5000, 6000, 4000, 6000, 11, 54261, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28659, 0, 18, 0, 0, 2, 100, 0, 400, 1000, 45000, 50000, 11, 54792, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 28667 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES 
(28667, 0, 0, 1, 38, 0, 100, 0, 0, 2, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set faction 35 when set data 2'),
(28667, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'evade when set data 2'),
(28667, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'die when set data 1'),
(28667, 0, 3, 4, 11, 0, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(28667, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 52182, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(28667, 0, 5, 0, 9, 0, 100, 0, 0, 5, 4000, 6000, 11, 52943, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28667, 0, 6, 0, 0, 0, 100, 0, 3000, 7000, 12000, 20000, 11, 52964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(28667, 0, 7, 0, 0, 0, 100, 0, 7000, 10000, 15000, 22000, 11, 52944, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 28668 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`,
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`,
`action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(28668, 0, 0, 1, 38, 0, 100, 0, 0, 2, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'set faction 35 when set data 2'),
(28668, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'evade when set data 2'),
(28668, 0, 2, 0, 38, 0, 100, 0, 0, 1, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'die when set data 1'),
(28668, 0, 3, 4, 11, 0, 100, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(28668, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 52182, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(28668, 0, 5, 0, 9, 0, 100, 0, 10, 20, 15000, 20000, 11, 52761, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28668, 0, 6, 0, 0, 0, 100, 0, 1500, 3000, 16000, 20000, 11, 52873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28668, 0, 7, 0, 9, 0, 100, 0, 5, 30, 3500, 4500, 11, 52889, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(28668, 0, 8, 0, 9, 0, 100, 0, 5, 30, 1500, 2000, 11, 52758, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, '');
