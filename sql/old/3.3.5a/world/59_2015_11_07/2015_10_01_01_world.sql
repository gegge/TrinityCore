--
SET @ENTRY := 34102;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (@ENTRY, 33462, 33480, 33459, 33467, 33477, 33465);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY, 33462, 33480, 33459, 33467, 33477, 33465) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100, @ENTRY*100+1, @ENTRY*100+2, @ENTRY*100+3, @ENTRY*100+4, @ENTRY*100+5, @ENTRY*100+6, 33462*100, 33480*100, 33459*100, 33467*100, 33477*100, 33465*100, 33462*100+1, 33480*100+1, 33459*100+1, 33467*100+1, 33477*100+1, 33465*100+1) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,600000,600000,1200000,1200000,53,0,@ENTRY*10,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - OOC - Action List"),
(@ENTRY,0,1,0,40,0,100,0,1,@ENTRY*10,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - On waypoint reached - Action List"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8494.070313, 1102.23584, 554.327515, 3.772250,"Argent Confessor Paletress - Action List - Set orientation"),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,3,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,5,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,6,0,0,0,100,0,5000,5000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,7,0,0,0,100,0,5000,5000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,8,0,0,0,100,0,7000,7000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,9,0,0,0,100,0,7000,7000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,10,0,0,0,100,0,7000,7000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,11,0,0,0,100,0,5000,5000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,12,0,0,0,100,0,5000,5000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,13,0,0,0,100,0,5000,5000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,14,0,0,0,100,0,7000,7000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,15,0,0,0,100,0,5000,5000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,16,0,0,0,100,0,5000,5000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,17,0,0,0,100,0,6000,6000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,18,0,0,0,100,0,6000,6000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,19,0,0,0,100,0,7000,7000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Talk"),
(@ENTRY*100,9,20,0,0,0,100,0,7000,7000,0,0,53,0,@ENTRY*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Action List - Start wp"),
(@ENTRY,0,2,0,40,0,100,0,2,@ENTRY*10+1,0,0,87,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3,@ENTRY*100+4,@ENTRY*100+5,@ENTRY*100+5,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - On data set - Random Action List"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33462,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+2,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+2,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33480,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+3,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+3,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33459,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+4,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+4,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33467,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+5,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+5,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33477,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+6,9,0,0,0,0,100,0,0,0,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY*100+6,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,33465,50,0,0,0,0,0,"Argent Confessor Paletress - Random Action List - Set Data"),
(@ENTRY,0,3,0,38,0,100,0,1,1,0,0,69,0,0,0,0,0,0,8,0,0,0,8490.290039, 1111.510010, 554.333984, 4.642580,"Argent Confessor Paletress - On data set - move to pos"),
(@ENTRY,0,4,0,38,0,100,0,1,2,0,0,5,23,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - On data set - play emote"),
(@ENTRY,0,5,0,38,0,100,0,1,3,0,0,5,17,0,0,0,0,0,1,0,0,0,0,0,0,0,"Argent Confessor Paletress - On data set - play emote"),
(33462,0,0,0,38,0,100,0,1,1,0,0,80,33462*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - On data set - Action List"),
(33462*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Set up"),
(33462*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33462*10,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Start waypoint"),
(33480,0,0,0,38,0,100,0,1,1,0,0,80,33480*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - On data set - Action List"),
(33480*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Set up"),
(33480*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33480*10,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Start waypoint"),
(33459,0,0,0,38,0,100,0,1,1,0,0,80,33459*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - On data set - Action List"),
(33459*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Set up"),
(33459*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33459*10,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Start waypoint"),
(33467,0,0,0,38,0,100,0,1,1,0,0,80,33467*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - On data set - Action List"),
(33467*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Set up"),
(33467*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33467*10,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Start waypoint"),
(33477,0,0,0,38,0,100,0,1,1,0,0,80,33477*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - On data set - Action List"),
(33477*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Set up"),
(33477*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33477*10,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Start waypoint"),
(33465,0,0,0,38,0,100,0,1,1,0,0,80,33465*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - On data set - Action List"),
(33465*100,9,0,0,0,0,100,0,0,0,0,0,91,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Set up"),
(33465*100,9,1,0,0,0,100,0,0,0,0,0,53,0,33465*10,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Start waypoint"),
(33462,0,1,0,40,0,100,0,5,33462*10,0,0,80,33462*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - On waypoint reached - Action List"),
(33462*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Gnomeregan Champion - Action List - Set orientation"),
(33462*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,4,0,0,0,100,0,10000,10000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,5,0,0,0,100,0,6000,6000,0,0,1,19,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,6,0,0,0,100,0,6000,6000,0,0,1,20,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Gnomeregan Champion - Action List - Talk"),
(33462*100+1,9,7,0,0,0,100,0,6000,6000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Gnomeregan Champion - Action List - Set Data"),
(33462*100+1,9,8,0,0,0,100,0,0,0,0,0,53,0,33462*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - Action List - Start waypoint"),
(33462,0,2,0,40,0,100,0,5,33462*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnomeregan Champion - On waypoint reached - Despawn"),
(33480,0,1,0,40,0,100,0,5,33480*10,0,0,80,33480*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - On waypoint reached - Action List"),
(33480*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Ironforge Champion - Action List - Set orientation"),
(33480*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Talk"),
(33480*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Talk"),
(33480*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Talk"),
(33480*100+1,9,4,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Talk"),
(33480*100+1,9,5,0,0,0,100,0,5000,5000,0,0,1,21,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Ironforge Champion - Action List - Talk"),
(33480*100+1,9,6,0,0,0,100,0,5000,5000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Ironforge Champion - Action List - Set Data"),
(33480*100+1,9,7,0,0,0,100,0,0,0,0,0,53,0,33480*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - Action List - Start waypoint"),
(33480,0,2,0,40,0,100,0,5,33480*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ironforge Champion - On waypoint reached - Despawn"),
(33459,0,1,0,40,0,100,0,3,33459*10,0,0,80,33459*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - On waypoint reached - Action List"),
(33459*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Orgrimmar Champion - Action List - Set orientation"),
(33459*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,4,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,5,0,0,0,100,0,6000,6000,0,0,1,22,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,6,0,0,0,100,0,6000,6000,0,0,1,23,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,7,0,0,0,100,0,4000,4000,0,0,45,1,2,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Orgrimmar Champion - Action List - Set Data"),
(33459*100+1,9,8,0,0,0,100,0,1000,1000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Emote"),
(33459*100+1,9,9,0,0,0,100,0,2000,2000,0,0,1,24,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Orgrimmar Champion - Action List - Talk"),
(33459*100+1,9,10,0,0,0,100,0,6000,6000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Orgrimmar Champion - Action List - Set Data"),
(33459*100+1,9,11,0,0,0,100,0,0,0,0,0,53,0,33459*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - Action List - Start waypoint"),
(33459,0,2,0,40,0,100,0,3,33459*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orgrimmar Champion - On waypoint reached - Despawn"),
(33467,0,1,0,40,0,100,0,4,33467*10,0,0,80,33467*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - On waypoint reached - Action List"),
(33467*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Silvermoon Champion - Action List - Set orientation"),
(33467*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Talk"),
(33467*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Talk"),
(33467*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Talk"),
(33467*100+1,9,4,0,0,0,100,0,5000,5000,0,0,1,25,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Silvermoon Champion - Action List - Talk"),
(33467*100+1,9,5,0,0,0,100,0,8000,8000,0,0,1,26,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Silvermoon Champion - Action List - Talk"),
(33467*100+1,9,6,0,0,0,100,0,2000,2000,0,0,45,1,3,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Silvermoon Champion - Action List - Set Data"),
(33467*100+1,9,7,0,0,0,100,0,3000,3000,0,0,5,17,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Emote"),
(33467*100+1,9,8,0,0,0,100,0,5000,5000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Silvermoon Champion - Action List - Set Data"),
(33467*100+1,9,9,0,0,0,100,0,0,0,0,0,53,0,33467*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - Action List - Start waypoint"),
(33467,0,2,0,40,0,100,0,4,33467*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silvermoon Champion - On waypoint reached - Despawn"),
(33477,0,1,0,40,0,100,0,6,33477*10,0,0,80,33477*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - On waypoint reached - Action List"),
(33477*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Stormwind Champion - Action List - Set orientation"),
(33477*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,4,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,5,0,0,0,100,0,5000,5000,0,0,1,27,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,6,0,0,0,100,0,7000,7000,0,0,1,28,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,7,0,0,0,100,0,8000,8000,0,0,1,29,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,8,0,0,0,100,0,7000,7000,0,0,1,30,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Stormwind Champion - Action List - Talk"),
(33477*100+1,9,9,0,0,0,100,0,5000,5000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Stormwind Champion - Action List - Set Data"),
(33477*100+1,9,10,0,0,0,100,0,0,0,0,0,53,0,33477*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - Action List - Start waypoint"),
(33477,0,2,0,40,0,100,0,6,33477*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Champion - On waypoint reached - Despawn"),
(33465,0,1,0,40,0,100,0,3,33465*10,0,0,80,33465*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - On waypoint reached - Action List"),
(33465*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,8485.782227, 1114.010864, 554.297485, 5.774796,"Undercity Champion - Action List - Set orientation"),
(33465*100+1,9,1,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Talk"),
(33465*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,31,0,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Undercity Champion - Action List - Talk"),
(33465*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Talk"),
(33465*100+1,9,4,0,0,0,100,0,1000,1000,0,0,5,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Emote"),
(33465*100+1,9,5,0,0,0,100,0,2000,2000,0,0,45,1,1,0,0,0,0,19,@ENTRY,15,0,0,0,0,0,"Undercity Champion - Action List - Set Data"),
(33465*100+1,9,6,0,0,0,100,0,3000,3000,0,0,5,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Emote"),
(33465*100+1,9,7,0,0,0,100,0,3000,3000,0,0,53,0,33465*10+1,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - Action List - Start waypoint"),
(33465,0,2,0,40,0,100,0,3,33465*10+1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Undercity Champion - On waypoint reached - Despawn");

DELETE FROM `waypoints` WHERE `entry`IN (@ENTRY*10, @ENTRY*10+1, 33462*10, 33462*10+1, 33480*10, 33480*10+1, 33459*10, 33459*10+1, 33467*10, 33467*10+1, 33477*10, 33477*10+1, 33465*10, 33465*10+1);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY*10+1,1,8490.655273, 1111.821045, 554.363525,'Argent Confessor Paletress'),
(@ENTRY*10+1,2,8488.863281, 1112.676514, 554.298096,'Argent Confessor Paletress'),
(@ENTRY*10,1,8494.070313, 1102.23584, 554.327515,'Argent Confessor Paletress'),
(33462*10,1,8491.833008, 1100.861572, 554.361450,'Champion'),
(33462*10,2,8491.234375, 1102.656860, 554.360840,'Champion'),
(33462*10,3,8487.101563, 1107.712036, 554.363220,'Champion'),
(33462*10,4,8482.299805, 1113.207886, 554.349243,'Champion'),
(33462*10,5,8485.782227, 1114.010864, 554.297485,'Champion'),
(33462*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33462*10+1,2,8482.299805, 1113.207886, 554.349243,'Champion'),
(33462*10+1,3,8487.101563, 1107.712036, 554.363220,'Champion'),
(33462*10+1,4,8491.234375, 1102.656860, 554.360840,'Champion'),
(33462*10+1,5,8491.833008, 1100.861572, 554.361450,'Champion'),
(33480*10,1,8494.106445, 1097.863037, 554.344543,'Champion'),
(33480*10,2,8491.234375, 1102.656860, 554.360840,'Champion'),
(33480*10,3,8487.101563, 1107.712036, 554.363220,'Champion'),
(33480*10,4,8482.942383, 1113.390015, 554.340759,'Champion'),
(33480*10,5,8485.782227, 1114.010864, 554.297485,'Champion'),
(33480*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33480*10+1,2,8482.942383, 1113.390015, 554.340759,'Champion'),
(33480*10+1,3,8487.101563, 1107.712036, 554.363220,'Champion'),
(33480*10+1,4,8491.234375, 1102.656860, 554.360840,'Champion'),
(33480*10+1,5,8494.106445, 1097.863037, 554.344543,'Champion'),
(33459*10,1,8486.814453, 1107.731689, 554.365784,'Champion'),
(33459*10,2,8482.299805, 1113.207886, 554.349243,'Champion'),
(33459*10,3,8485.782227, 1114.010864, 554.297485,'Champion'),
(33459*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33459*10+1,2,8482.299805, 1113.207886, 554.349243,'Champion'),
(33459*10+1,3,8486.814453, 1107.731689, 554.365784,'Champion'),
(33467*10,1,8483.411133, 1105.254639, 554.445313,'Champion'),
(33467*10,2,8486.906250, 1107.583130, 554.366699,'Champion'),
(33467*10,3,8482.692383, 1113.328857, 554.342896,'Champion'),
(33467*10,4,8485.782227, 1114.010864, 554.297485,'Champion'),
(33467*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33467*10+1,2,8482.692383, 1113.328857, 554.342896,'Champion'),
(33467*10+1,3,8486.906250, 1107.583130, 554.366699,'Champion'),
(33467*10+1,4,8483.411133, 1105.254639, 554.445313,'Champion'),
(33477*10,1,8492.628906, 1091.799683, 554.420837,'Champion'),
(33477*10,2,8496.347656, 1094.432129, 554.335510,'Champion'),
(33477*10,3,8492.845703, 1099.233643, 554.353027,'Champion'),
(33477*10,4,8488.207031, 1106.236206, 554.367737,'Champion'),
(33477*10,5,8483.253906, 1113.153198, 554.338135,'Champion'),
(33477*10,6,8485.782227, 1114.010864, 554.297485,'Champion'),
(33477*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33477*10+1,2,8483.253906, 1113.153198, 554.338135,'Champion'),
(33477*10+1,3,8488.207031, 1106.236206, 554.367737,'Champion'),
(33477*10+1,4,8492.845703, 1099.233643, 554.353027,'Champion'),
(33477*10+1,5,8496.347656, 1094.432129, 554.335510,'Champion'),
(33477*10+1,6,8492.628906, 1091.799683, 554.420837,'Champion'),
(33465*10,1,8477.542969, 1110.444702, 554.429932,'Champion'),
(33465*10,2,8482.299805, 1113.207886, 554.349243,'Champion'),
(33465*10,3,8485.782227, 1114.010864, 554.297485,'Champion'),
(33465*10+1,1,8485.782227, 1114.010864, 554.297485,'Champion'),
(33465*10+1,2,8482.299805, 1113.207886, 554.349243,'Champion'),
(33465*10+1,3,8477.542969, 1110.444702, 554.429932,'Champion');

DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY, 33462, 33480, 33459, 33467, 33477, 33465);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0,'Thank you all for attending this sermon. It''s wonderful to see so many familiar faces!',12,0,100,0,0,0, 'Argent Confessor Paletress',34192),
(@ENTRY,1,0,'Today I would like to touch on the three virtues of the Light.',12,0,100,0,0,0, 'Argent Confessor Paletress',34193),
(@ENTRY,2,0,'These are dark and difficult times for us all. The armies of the Scourge amass to the south. Companions fall on the battlefield and rise to serve our enemy moments later.',12,0,100,0,0,0, 'Argent Confessor Paletress',34194),
(@ENTRY,3,0,'Many of you have experienced a betrayal of trust.',12,0,100,0,0,0, 'Argent Confessor Paletress',34196),
(@ENTRY,4,0,'Yet you persevere, as we all must. In these times, no one is a stranger to the virtue of tenacity. In the face of despair and hatred, we continue to stand true to our beliefs and fight on.',12,0,100,0,0,0, 'Argent Confessor Paletress',34197),
(@ENTRY,5,0,'There can be no doubt as to your tenacity... but there are other virtues to consider.',12,0,100,0,0,0, 'Argent Confessor Paletress',34199),
(@ENTRY,6,0,'Respect is the first virtue taught to those joining the path of the Light.',12,0,100,0,0,0, 'Argent Confessor Paletress',34200),
(@ENTRY,7,0,'Look across the aisle to those you would call enemy. Despite the hatred that separates you, there are qualities to respect in your opponent. Their prowess should be acknowledged.',12,0,100,0,0,0, 'Argent Confessor Paletress',34201),
(@ENTRY,8,0,'All of us gathered here have a concept of honorable combat. Conducting yourself with honor and treating your opponent as you wish to be treated shows respect.',12,0,100,0,0,0, 'Argent Confessor Paletress',34202),
(@ENTRY,9,0,'Respect your opponent on the field, whether he be your brother or your sworn enemy. No matter where your beliefs truly lie, such respect is acknowledging a connection...',12,0,100,0,0,0, 'Argent Confessor Paletress',34203),
(@ENTRY,10,0,'...and in acknowledging those connections, you are closer to the Light.',12,0,100,0,0,0, 'Argent Confessor Paletress',34205),
(@ENTRY,11,0,'There is one further step on the path of Light: compassion.',12,0,100,0,0,0, 'Argent Confessor Paletress',34206),
(@ENTRY,12,0,'Rivalries abound in this day and age. It is easy to see differences wherever you turn.',12,0,100,0,0,0, 'Argent Confessor Paletress',34207),
(@ENTRY,13,0,'The challenge is in looking beyond appearances and understanding our similarities. Through this understanding, you can feel compassion for the losses others have suffered...',12,0,100,0,0,0, 'Argent Confessor Paletress',34208),
(@ENTRY,14,0,'...even if the victim bears another banner.',12,0,100,0,0,0, 'Argent Confessor Paletress',34209),
(@ENTRY,15,0,'By feeling and understanding compassion in enemy and ally alike, you reaffirm your connection with the world.',12,0,100,0,0,0, 'Argent Confessor Paletress',34210),
(@ENTRY,16,0,'Acting on these tenets, these virtues, help make the world a place we all can appreciate. A world of honor and justice.',12,0,100,0,0,0, 'Argent Confessor Paletress',34211),
(@ENTRY,17,0,'Think on my words, friends. In the darkness that surrounds us all, the Light is needed more than ever.',12,0,100,0,0,0, 'Argent Confessor Paletress',34212),
(@ENTRY,18,0,'I''ll be behind the confessional screen if anyone wishes to speak with me. Any doubts, any worries, any uncertainties I will happily soothe.',12,0,100,0,0,0, 'Argent Confessor Paletress',34216),
(@ENTRY,19,0,'Take heart. Size isn''t what matters, but how you use the skills you have.',12,0,100,0,0,0, 'Argent Confessor Paletress',34250),
(@ENTRY,20,0,'What you lack in size you make up for in ambition and dedication, little one. Go with the Light.',12,0,100,0,0,0, 'Argent Confessor Paletress',34251),
(@ENTRY,21,0,'Drink in moderation, then, my dwarven friend, but you may want to turn in your lance and reins for the time being. Go with the Light.',12,0,100,0,0,0, 'Argent Confessor Paletress',34259),
(@ENTRY,22,0,'I understand your frustration. Your people are ferocious in battle, and this isn''t what you''re used to.',12,0,100,0,0,0, 'Argent Confessor Paletress',34285),
(@ENTRY,23,0,'But this is a different sort of honorable combat. Difficult to adapt to, perhaps, but with your prowess I''m sure you''ll show everyone the strength in your people.',12,0,100,0,0,0, 'Argent Confessor Paletress',34286),
(@ENTRY,24,0,'Besides... while an axe can be a valuable tool in war, lances have their uses as well.',12,0,100,0,0,0, 'Argent Confessor Paletress',34287),
(@ENTRY,25,0,'It may seem pointless, but try to find pride in a good fight. The time will come when all this practicing and competition will be put to good use.',12,0,100,0,0,0, 'Argent Confessor Paletress',34292),
(@ENTRY,26,0,'And your hair looks wonderful.',12,0,100,0,0,0, 'Argent Confessor Paletress',34293),
(@ENTRY,27,0,'Your heart is in the right place, and I know you seek to serve the Light. But these small strikes do little to the great undead host.',12,0,100,0,0,0, 'Argent Confessor Paletress',34264),
(@ENTRY,28,0,'This tournament is helping to form a strong, concerted force, though it may not appear obvious. When we''re ready, the eyes of the Crusade and all its champions will turn towards Icecrown.',12,0,100,0,0,0, 'Argent Confessor Paletress',34265),
(@ENTRY,29,0,'We will bring the might of all races to the Lich King, and he will be defeated.',12,0,100,0,0,0, 'Argent Confessor Paletress',34266),
(@ENTRY,30,0,'I know this does not seem like the obvious path to you, but it will bring you closer to the Light. Fight well, brother.',12,0,100,0,0,0, 'Argent Confessor Paletress',34267),
(@ENTRY,31,0,'Oh, my. Do you feel remorseful, at least?',12,0,100,0,0,0, 'Argent Confessor Paletress',34254),
(33462,0,0,'I don''t know if I can compete! Everyone is so much bigger!',12,0,100,0,0,0, 'Gnomeregan Champion',34246),
(33462,1,0,'I''ve calculated the probability of my success, and it''s distressingly low!',12,0,100,0,0,0, 'Gnomeregan Champion',34247),
(33462,2,0,'I can''t accurately assess the mathematics behind the charge of my turbostrider while keeping hold of my lance at the precise angle needed and keeping my shield in the exact location for maximum protection at any given second!',12,0,100,0,0,0, 'Gnomeregan Champion',34248),
(33462,3,0,'...and some of those mounts can trample me!',12,0,100,0,0,0, 'Gnomeregan Champion',34249),
(33480,0,0,'Lass, I''ve a confession to make to ya.',12,0,100,0,0,0, 'Ironforge Champion',34255),
(33480,1,0,'I''ve been feelin''... urges.',12,0,100,0,0,0, 'Ironforge Champion',34256),
(33480,2,0,'It was a powerful feelin'' while I was listenin'' to yer sermon, and it''s drivin'' me nuts!',12,0,100,0,0,0, 'Ironforge Champion',34257),
(33480,3,0,'...I NEED A DRINK!',12,0,100,0,0,0, 'Ironforge Champion',34258),
(33459,0,0,'This isn''t honorable combat. I long to face my opponents in battle with my axe in hand!',12,0,100,0,0,0, 'Orgrimmar Champion',34269),
(33459,1,0,'These are my enemies. YOU would be my enemy in battle! Your king has declared war on my kind!',12,0,100,0,0,0, 'Orgrimmar Champion',34270),
(33459,2,0,'But instead of fighting as my people would, as my people should, I find myself with a long, unwieldy pole, attempting to coax my wolf into charging my opponent without attacking.',12,0,100,0,0,0, 'Orgrimmar Champion',34271),
(33459,3,0,'This is not how orcs fight! My duty to the Warchief wars with my personal honor. I hold no faith in your Light, but as you seem an advisor, I would hear your words.',12,0,100,0,0,0, 'Orgrimmar Champion',34272),
(33467,0,0,'This fighting is endless. I''m not certain how much more of it I can stand.',12,0,100,0,0,0, 'Silvermoon Champion',34289),
(33467,1,0,'All of this posturing, all of this dancing about in rings... it seems pointless. What''s the use?',12,0,100,0,0,0, 'Silvermoon Champion',34290),
(33467,2,0,'And I''m beginning to get HELMET HAIR. This is a travesty!',12,0,100,0,0,0, 'Silvermoon Champion',34291),
(33477,0,0,'My heart hangs heavier with each passing day, Confessor.',12,0,100,0,0,0, 'Stormwind Champion',34260),
(33477,1,0,'I have been ordered here, and here I stay and fight under the banner of Stormwind. But everything I do here is empty.',12,0,100,0,0,0, 'Stormwind Champion',34261),
(33477,2,0,'Beyond these reaches, the Scourge continue their work, destroying more and more of what we''ve built. The fight should be there. I should be there.',12,0,100,0,0,0, 'Stormwind Champion',34262),
(33477,3,0,'How can I justify jousting while people die without my protection?',12,0,100,0,0,0, 'Stormwind Champion',34263),
(33465,0,0,'I punched a penguin on my way in here.',12,0,100,0,0,0, 'Undercity Champion',34252),
(33465,1,0,'Nah, not really. I just wanted to see the look on your face.',12,0,100,0,0,0, 'Undercity Champion',34253);