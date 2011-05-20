-- TrinityCore: if (TeamInInstance == ALLIANCE) creature->UpdateEntry(26798, HORDE);
UPDATE `creature` SET
        `phaseMask` = 1
WHERE `id` = 26796;