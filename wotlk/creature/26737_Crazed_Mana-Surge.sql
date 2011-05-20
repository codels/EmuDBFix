UPDATE `creature_template` SET
        `unit_flags` = `unit_flags` &~ 537133568
WHERE `entry` IN (26737, 30519);