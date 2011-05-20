UPDATE `creature_template` SET
        `mindmg` = 496,
        `maxdmg` = 674,
        `attackpower` = 783,
        `dmg_multiplier` = if(`entry` = 16060, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (16060, 29955);