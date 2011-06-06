SET @NPC = 15956;
UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = @NPC, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (@NPC, 29249);

DELETE FROM `script_texts` WHERE `npc_entry` = @NPC;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `sound`, `type`, `comment`) VALUES 
(@NPC, -1533008, 'Shh... it will all be over soon.', 8789, 1, 'anubrekhan SAY_SLAY'),
(@NPC, -1533007, 'Closer now... tasty morsels. I\'ve been too long without food. Without blood to drink.', 8793, 1, 'anubrekhan SAY_TAUNT4'),
(@NPC, -1533006, 'Which one shall I eat first? So difficult to choose... the all smell so delicious.', 8792, 1, 'anubrekhan SAY_TAUNT3'),
(@NPC, -1533005, 'Where to go? What to do? So many choices that all end in pain, end in death.', 8791, 1, 'anubrekhan SAY_TAUNT2'),
(@NPC, -1533004, 'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.', 8790, 1, 'anubrekhan SAY_TAUNT1'),
(@NPC, -1533003, 'Yes, Run! It makes the blood pump faster!', 8787, 1, 'anubrekhan SAY_AGGRO3'),
(@NPC, -1533002, 'There is no way out.', 8786, 1, 'anubrekhan SAY_AGGRO2'),
(@NPC, -1533000, 'Ahh... welcome to my parlor.', 8788, 1, 'anubrekhan SAY_GREET'),
(@NPC, -1533001, 'Just a little taste...', 8785, 1, 'anubrekhan SAY_AGGRO1');