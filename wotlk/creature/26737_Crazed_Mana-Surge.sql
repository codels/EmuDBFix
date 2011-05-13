UPDATE `creature_template` SET
        `unit_flags` = `unit_flags` &~ (512 | 262144 | 536870912)
WHERE `entry` IN (26737, 30519);