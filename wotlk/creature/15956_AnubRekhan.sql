UPDATE `creature_template` SET
        `faction_A` = 21,
        `faction_H` = 21,
        `mindmg` = 509,
        `maxdmg` = 683,
        `attackpower` = 805,
        `dmg_multiplier` = if(`entry` = 15956, 35, 70),
        `rangeattacktime` = 0
WHERE `entry` IN (15956, 29249);

DELETE FROM `script_texts` WHERE `npc_entry` = 15956 OR `entry` IN (-1533000, -1533001, -1533002, -1533003, -1533004, -1533005, -1533006, -1533007, -1533008);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`,
`content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`,
`sound`, `type`, `language`, `emote`, `comment`) VALUES 
(15956, -1533008, 'Shh... it will all be over soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Шшш... скоро все будет кончено.', 8789, 1, 0, 0, 'anubrekhan SAY_SLAY'),
(15956, -1533007, 'Closer now... tasty morsels. I\'ve been too long without food. Without blood to drink.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Подойдите ближе... лакомые кусочки. Я слишком долго мечтал о еде и крови.', 8793, 1, 0, 0, 'anubrekhan SAY_TAUNT4'),
(15956, -1533006, 'Which one shall I eat first? So difficult to choose... the all smell so delicious.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Кого мне съесть первым ? Сложный выбор... все они пахнут так вкусно.', 8792, 1, 0, 0, 'anubrekhan SAY_TAUNT3'),
(15956, -1533005, 'Where to go? What to do? So many choices that all end in pain, end in death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Куда идти ? Что делать ? Выбирайте, но все пути ведут к боли, и смерти.', 8791, 1, 0, 0, 'anubrekhan SAY_TAUNT2'),
(15956, -1533004, 'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Я слышу биение маленьких сердец. Да... теперь они бьются быстрей. Но скоро они остановятся.', 8790, 1, 0, 0, 'anubrekhan SAY_TAUNT1'),
(15956, -1533003, 'Yes, Run! It makes the blood pump faster!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Бегите, бегите! Я люблю горячую кровь!', 8787, 1, 0, 0, 'anubrekhan SAY_AGGRO3'),
(15956, -1533002, 'There is no way out.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вам отсюда не выбраться.', 8786, 1, 0, 0, 'anubrekhan SAY_AGGRO2'),
(15956, -1533000, 'Ahh... welcome to my parlor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ооо... добро пожаловать в мою гостиную.', 8788, 1, 0, 0, 'anubrekhan SAY_GREET'),
(15956, -1533001, 'Just a little taste...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Посмотрим какие вы на вкус...', 8785, 1, 0, 0, 'anubrekhan SAY_AGGRO1');