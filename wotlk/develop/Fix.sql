-- deleted unsed script
DELETE FROM `gossip_scripts` WHERE `id` = 1021101;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10211 AND `id` = 1;
-- fixed error
UPDATE `quest_template` SET `RewItemCount1` = 0 WHERE `RewItemId1` = 0;