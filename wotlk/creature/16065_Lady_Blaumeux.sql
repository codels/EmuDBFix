UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `speed_walk` = 1.7,
        `speed_run` = 3,
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = 16065, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (16065, 30601);