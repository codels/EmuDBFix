UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `speed_walk` = 2,
        `speed_run` = 3,
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = 16028, 35, 70),
        `baseattacktime` = 1600,
        `rangeattacktime` = 0
WHERE `entry` IN (16028, 29324);