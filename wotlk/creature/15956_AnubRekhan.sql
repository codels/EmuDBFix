UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = 15956, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (15956, 29249);