UPDATE `creature_template` SET
        `faction_A` = 233,
        `faction_H` = 233,
        `mindmg` = 422,
        `maxdmg` = 586,
        `attackpower` = 642,
        `dmg_multiplier` = if(`entry` = 16360, 7.5, 13),
        `rangeattacktime` = 0
WHERE `entry` IN (16360, 30303);