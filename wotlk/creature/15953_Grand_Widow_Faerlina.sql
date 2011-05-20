UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `mindmg` = 496,
        `maxdmg` = 674,
        `attackpower` = 783,
        `dmg_multiplier` = if(`entry` = 15953, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (15953, 29268);