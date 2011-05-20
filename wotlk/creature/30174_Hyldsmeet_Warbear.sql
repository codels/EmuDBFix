-- add spell
UPDATE `creature_template` SET
        `spell1` = 54460,
        `spell2` = 54458,
        `spell3` = 15971
WHERE `entry` = 30174;

UPDATE `vehicle_template_accessory` SET
        `minion` = 1
WHERE `entry` = 30174 AND `seat_id` = 0;