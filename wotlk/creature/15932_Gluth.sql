UPDATE `creature_template` SET
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = 16360, 35, 70),
        `baseattacktime` = 1600,
        `rangeattacktime` = 0
WHERE `entry` IN (15932, 29417);