-- Startup
function InitGame(levelTime, randomSeed, restart)
	game.Print("Lua Level Init...");
	game.Print("-map_restart ...");
		game.Print("--workaround-setup ...");
			ent = entity.Spawn();
			ent:SetClassname("target_levelchange");
			ent:SetTargetname("map_restart");
			ent:SetTarget("borg3");
			entity.CallSpawn(ent);
		game.Print("--trigger-setup ...");
		if restart == 1 then
			game.ClientPrint(-1, "Please don't use map_restart, use map or devmap instead.");
			game.Print("Please don't use map_restart, use map or devmap instead.");
			ent = entity.Find("map_restart")
			entity.Use(ent)
		end      
	game.Print("-Reimplementing splashDamage, SplashRadius and material to existing misc_model_breakables...");
		entity.MMBRefit();
		
	game.Print("-Updating and fixing Forcefields (except Foster-Game");
		game.Print("--Forcefield Room 1");
			ent = entity.Spawn();
			ent:SetClassname("misc_model_breakable");
			ent:SetTarget("entry_field");
			ent:SetHealth("1");  
			ent:SetSpawnflags("1"); 
			ent:SetSplashDamage("75");  
			ent:SetSplashRadius("75");
			ent:SetKeyValue("material", "1");  
			ent:SetModel("models/mapobjects/borg/disnode.md3"); 
			mover.SetPosition(ent, 245, 788, 462);     
			mover.SetAngles(ent, 0, 180, 0);
			entity.CallSpawn(ent); 
			
			ent = entity.FindBModel(44);
			ent:SetClassname("func_forcefield");      
			entity.CallSpawn(ent); 
			 
		game.Print("--Forcefield Room 2");
			ent = entity.Spawn();
			ent:SetClassname("misc_model_breakable");
			ent:SetTarget("chasmfield1");
			ent:SetHealth("1");
			ent:SetSpawnflags("1");
			ent:SetSplashDamage("75");  
			ent:SetSplashRadius("75");
			ent:SetKeyValue("material", "1");    
			ent:SetModel("models/mapobjects/borg/circuit_2.md3"); 
			mover.SetPosition(ent, -388, -944, 440);      
			mover.SetAngles(ent, 0, 0, 0);
			entity.CallSpawn(ent);
			 
			ent = entity.FindBModel(38);
			ent:SetClassname("func_forcefield");      
			entity.CallSpawn(ent);
			 
		game.Print("--Forcefield Room 4");
			ent = entity.Spawn();
			ent:SetClassname("misc_model_breakable");
			ent:SetTarget("t283");
			ent:SetHealth("1");  
			ent:SetSpawnflags("1"); 
			ent:SetSplashDamage("75");  
			ent:SetSplashRadius("75");
			ent:SetKeyValue("material", "1");  
			ent:SetModel("models/mapobjects/borg/disnode.md3"); 
			mover.SetPosition(ent, 1096, -441, 224);     
			mover.SetAngles(ent, 0, 45, 0);
			entity.CallSpawn(ent); 
			
			ent = entity.FindBModel(5);
			ent:SetClassname("func_forcefield");      
			entity.CallSpawn(ent); 
			      
		game.Print("--Forcefield Hallway");  
			ent = entity.FindBModel(33);     
			entity.Use(ent);
			  
		game.Print("--Forcefield Room 5");
			ent = entity.FindBModel(112);
			ent:SetClassname("func_usable");  
			ent:SetSpawnflags("8");  
			ent:SetWait("1");  
			ent:SetTarget("endfield");
			ent:SetLuaUse("borglcarswitch");  
			mover.SetPosition(ent, 616, 1947.5, 256); 
			entity.CallSpawn(ent); 
			
			ent = entity.FindBModel(32);
			ent:SetClassname("func_forcefield");      
			entity.CallSpawn(ent);
			  
	game.Print("-Some Decorative Work...");  
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin2.md3"); 
		mover.SetPosition(ent, 1077, -221, 235);     
		mover.SetAngles(ent, 0, 270, 0);
		entity.CallSpawn(ent); 
		 
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin.md3"); 
		mover.SetPosition(ent, 827, -685, 239);     
		mover.SetAngles(ent, 0, 180, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin.md3"); 
		mover.SetPosition(ent, 991, 1060, 239);     
		mover.SetAngles(ent, 0, 180, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin.md3"); 
		mover.SetPosition(ent, 1350, 1656, 253);     
		mover.SetAngles(ent, 0, 180, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin.md3"); 
		mover.SetPosition(ent, 607, 1762, 253);     
		mover.SetAngles(ent, 0, 90, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin.md3"); 
		mover.SetPosition(ent, 929, 1706, 253);     
		mover.SetAngles(ent, 0, 90, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("misc_model_breakable");
		ent:SetSpawnflags("17");
		ent:SetModel("models/mapobjects/borg/plugin2.md3"); 
		mover.SetPosition(ent, 930, 1882, 253);     
		mover.SetAngles(ent, 0, 270, 0);
		entity.CallSpawn(ent); 
		   
	game.Print("-Transfer...");
		ent = entity.Spawn();
		ent.SetupTrigger(ent, 120, 16, 128);
		ent:SetClassname("trigger_multiple");
		ent:SetTarget("transfercount");
		ent:SetWait(1);
		entity.CallSpawn(ent);
		
		mover.SetPosition(ent, 404, 1952, 256);
		ent = entity.Spawn();
		ent:SetClassname("target_counter");
		ent:SetTargetname("transfercount");
		ent:SetTarget("transfer");
		ent:SetCount("1");
		mover.SetPosition(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("target_levelchange");
		ent:SetTargetname("transfer");
		ent:SetTarget("borg4");
		ent:SetWait("-1");
		mover.SetPosition(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("target_relay");
		ent:SetTargetname("transfer");
		ent:SetTarget("endfield");
		mover.SetPosition(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		
	game.Print("-Setting up spawnpoints...");
		entity.RemoveSpawns();
		ent = entity.Spawn();
		ent:SetClassname("info_player_start");
		mover.SetPosition(ent, 174, 1186, 412);  
		mover.SetAngles(ent, 0, 270, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("info_player_start");
		mover.SetPosition(ent, 132, 1164, 408); 
		mover.SetAngles(ent, 0, 270, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("info_player_start");
		mover.SetPosition(ent, 88, 1192, 408); 
		mover.SetAngles(ent, 0, 180, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("info_player_start");
		mover.SetPosition(ent, 96, 1264, 412);  
		mover.SetAngles(ent, 0, 180, 0);
		entity.CallSpawn(ent);
		
		ent = entity.Spawn();
		ent:SetClassname("info_player_start");
		mover.SetPosition(ent, 184, 1248, 408);
		mover.SetAngles(ent, 0, 225, 0);
		entity.CallSpawn(ent);
		
	game.Print("-Breakable-Mod...");
		game.Print("--func_breakable...");
			ent = entity.FindBModel(93);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(92);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(24);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(23);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(91);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(90);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(6);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(7);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent	= entity.FindBModel(113);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(114);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(117);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(118);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(119);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(120);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(115);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(116);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(84);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(83);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(86);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(85);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(21);
			ent:SetKeyValue("material", "1");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(3);
			ent:SetKeyValue("material", "1");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(88);
			ent:SetKeyValue("material", "2");
			ent:SetSplashDamage("75");
			ent:SetSplashRadius("75");
			entity.CallSpawn(ent);
			
			ent = entity.FindBModel(87);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);

		--[[ this is erroring for now... I need to think of sth. else here.
		game.Print("--misc_model_breakable...");
			game.Print("---checking for local or dedicated..."); 
				if not entity.FindNumber(361) == nil then
				ent = entity.FindNumber(361);
				test = ent.GetClassname(ent);
				if test == "misc_model_breakable" then
				
			game.Print("----dedicated...");
				ent = entity.FindNumber(224);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(225);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(226);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(228);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(229);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(230);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(231);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(232);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(233);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(234);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(235);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(236);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(237);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(238);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(239);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(240);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(241);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(242);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(243);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(244);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(246);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(247);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(248);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(250);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(251);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent); 
				
				ent = entity.FindNumber(286);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(287);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(322);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(361);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				else
			game.Print("----local...");
				ent = entity.FindNumber(222);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(223);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(224);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(226);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(227);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(228);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(229);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(230);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(231);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(232);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(233);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(234);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(235);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(236);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(237);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(238);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(239);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(240);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(241);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(242);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(244);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(245);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(246);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(248);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(249);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(284);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(285);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(320);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(359);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				end
				else
				
			game.Print("----local...");
				ent = entity.FindNumber(222);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(223);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(224);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(226);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(227);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(228);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(229);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(230);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(231);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(232);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(233);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(234);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(235);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(236);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(237);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(238);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(239);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(240);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(241);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(242);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(244);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(245);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(246);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(248);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(249);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(284);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(285);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(320);
				ent:SetKeyValue("material", "1");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				
				ent = entity.FindNumber(359);
				ent:SetKeyValue("material", "2");
				ent:SetSplashDamage("75");
				ent:SetSplashRadius("75");
				entity.CallSpawn(ent);
				end ]]--
				
	game.Print("-Rescue The Foster/Wesker...");
		game.Print("--Element fixes...");
			game.Print("---Fixing Forcefields..."); 
				ent = entity.FindBModel(48);
				ent:SetClassname("func_forcefield");      
				entity.CallSpawn(ent)
				
				ent = entity.FindBModel(102);
				ent:SetClassname("func_forcefield");      
				entity.CallSpawn(ent)
				
				ent = entity.FindBModel(103);
				ent:SetClassname("func_forcefield");      
				entity.CallSpawn(ent)  
				
			game.Print("---Controler Setup...");  
				ent = entity.FindBModel(122); 
				ent:SetClassname("func_usable"); 
				ent:SetSpawnflags("8");       
				ent:SetWait("1");       
				ent:SetTarget("foster_field"); 
				ent:SetLuaUse("borglcarswitch");    
				entity.CallSpawn(ent)  
				
				ent = entity.FindBModel(4);
				ent:SetClassname("func_usable");
				ent:SetSpawnflags("8");       
				ent:SetWait("1");       
				ent:SetTarget("bed2");
				ent:SetLuaUse("borglcarswitch");      
				entity.CallSpawn(ent) 
				
				mover.SetPosition(ent, 721, -1600, 341); 
				ent = entity.FindBModel(121); 
				ent:SetClassname("func_usable"); 
				ent:SetSpawnflags("8");       
				ent:SetWait("1");       
				ent:SetTarget("t310"); 
				ent:SetLuaUse("borglcarswitch");     
				entity.CallSpawn(ent)  
				
			game.Print("---Lift Setup...");  
				ent = entity.FindBModel(94);         
				ent:SetWait("-1");
				ent:SetKeyValue("angle", "-2");  
				ent:SetCount("96");  
				ent:SetSpawnflags("1");    
				entity.CallSpawn(ent) 
				
				ent = entity.FindBModel(95);
				ent:SetWait("-1");
				ent:SetKeyValue("angle", "-2");
				ent:SetCount("96");
				ent:SetSpawnflags("1");
				entity.CallSpawn(ent) 
				
				ent = entity.FindBModel(97);        
				ent:SetWait("-1");
				ent:SetKeyValue("angle", "-2");  
				ent:SetCount("96");     
				entity.CallSpawn(ent) 
				
				ent = entity.FindBModel(98);       
				ent:SetWait("-1");
				ent:SetKeyValue("angle", "-2");  
				ent:SetCount("96");  
				ent:SetSpawnflags("1");    
				entity.CallSpawn(ent) 
				
			game.Print("---Lift control Positioning..."); 
				game.Print("----Bed 2...");  
					ent = entity.Spawn();
					ent:SetClassname("target_boolean");
					ent:SetSwapname("bed2");
					ent:SetTruetarget("bed2up");
					ent:SetFalsetarget("bed2down");
					ent:SetSpawnflags("2");
					entity.CallSpawn(ent) 
					
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("bed2up");
					ent:SetLuaUse("bed2upscript");
					entity.CallSpawn(ent) 
					
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("bed2down");
					ent:SetLuaUse("bed2downscript");
					entity.CallSpawn(ent) 
					
				game.Print("----Bed 3...");  
					ent = entity.Spawn();
					ent:SetClassname("target_boolean");
					ent:SetSwapname("t310");
					ent:SetTruetarget("bed3up");
					ent:SetFalsetarget("bed3down");
					ent:SetSpawnflags("3");   
					entity.CallSpawn(ent) 
					
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("bed3up");
					ent:SetLuaUse("bed3upscript");
					entity.CallSpawn(ent) 
					
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("bed3down");
					ent:SetLuaUse("bed3downscript");
					entity.CallSpawn(ent);
					   
		game.Print("--Rescue-Script-setup...");
			game.Print("---Foster vs Wesker switch...");
				game.Print("----Boolean...");
					ent = entity.Spawn();
					ent:SetClassname("target_boolean");
					ent:SetTargetname("t327");
					ent:SetSwapname("weskeroff");
					ent:SetFalsetarget("weskersetup");
					ent:SetSpawnflags(4);
					entity.CallSpawn(ent);
					
				game.Print("----Message: anyone Else...");
					ent = entity.Spawn();
					ent:SetClassname("target_print");
					ent:SetTargetname("weskersetup");
					ent:SetMessage("Wesker: I don't need anyone else.");
					entity.CallSpawn(ent);
					
			game.Print("---Point of no return...");
				game.Print("----relay with selfflag...");    
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("weskeroff-relay");
					ent:SetTarget("weskeroff");
					ent:SetSpawnflags(8);
					entity.CallSpawn(ent); 
					     
				game.Print("----trigger to call the script and end selection...");
					ent = entity.Spawn();
					ent.SetupTrigger(ent, 16, 128, 96);
					ent:SetClassname("trigger_multiple");
					ent:SetTarget("prestartcount");
					ent:SetWait(1);
					entity.CallSpawn(ent);
					mover.SetPosition(ent, 336, -1424, 336);
					
					ent = entity.Spawn();
					ent:SetClassname("target_counter");
					ent:SetTargetname("prestartcount");
					ent:SetTarget("weskeroff-relay");
					ent:SetCount("1");
					mover.SetPosition(ent, 0, 0, 0);
					entity.CallSpawn(ent); 
					
				game.Print("----Selection-Boolean and relays for script-calling...");
					ent = entity.Spawn();
					ent:SetClassname("target_boolean");
					ent:SetTargetname("weskeroff-relay");
					ent:SetSwapname("weskersetup");
					ent:SetFalsetarget("gofoster");
					ent:SetTruetarget("print_possible");
					ent:SetSpawnflags(4);
					entity.CallSpawn(ent);
					
				game.Print("----Message: Possible?...");
					ent = entity.Spawn();
					ent:SetClassname("target_print");
					ent:SetTargetname("print_possible");
					ent:SetMessage("Wesker: How is this possible?");
					entity.CallSpawn(ent);
					
			game.Print("---Script caller...");
				game.Print("----Foster...");
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("gofoster");
					ent:SetLuaUse("fosterscript");
					entity.CallSpawn(ent);
					
				game.Print("----Wesker...");
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("weskersetup");
					ent:SetLuaUse("weskerscript");
					ent:SetSpawnflags(8);
					entity.CallSpawn(ent);
					
			game.Print("---First Forcefield...");
				game.Print("----Trigger Setup...");
					ent = entity.Spawn();
					ent.SetupTrigger(ent, 16, 128, 96);
					ent:SetClassname("trigger_multiple");
					ent:SetTarget("firstfieldcount");
					ent:SetWait(1);
					entity.CallSpawn(ent);
					mover.SetPosition(ent, 1000, -1424, 336);
					
					ent = entity.Spawn();
					ent:SetClassname("target_counter");
					ent:SetTargetname("firstfieldcount");
					ent:SetTarget("openfielddelay");
					ent:SetCount("1");
					mover.SetPosition(ent, 0, 0, 0);
					entity.CallSpawn(ent);
					
					ent = entity.Spawn();
					ent:SetClassname("target_delay");
					ent:SetTargetname("openfielddelay");
					ent:SetTarget("openfield");
					ent:SetWait("10");
					mover.SetPosition(ent, 0, 0, 0);
					entity.CallSpawn(ent);
					
					ent = entity.Spawn();
					ent:SetClassname("target_delay");
					ent:SetTargetname("openfielddelay");
					ent:SetTarget("fosterlbcount");
					ent:SetWait("40");
					mover.SetPosition(ent, 0, 0, 0);
					entity.CallSpawn(ent);
					
					ent = entity.Spawn();
					ent:SetClassname("target_relay");
					ent:SetTargetname("openfield");
					ent:SetTarget("firstbed");
					mover.SetPosition(ent, 0, 0, 0);
					entity.CallSpawn(ent);
					
			game.Print("---Leave-behind Setup...");
				ent = entity.Spawn();
				ent.SetupTrigger(ent, 16, 128, 96);
				ent:SetClassname("trigger_multiple");
				ent:SetTarget("fosterlbcount");
				ent:SetWait(1);
				entity.CallSpawn(ent);
				
				mover.SetPosition(ent, 1368, -1424, 336);
				ent = entity.Spawn();
				ent:SetClassname("target_counter");
				ent:SetTargetname("fosterlbcount");
				ent:SetTarget("fosterbedcheck");
				ent:SetCount("1");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_boolean");
				ent:SetTargetname("fosterbedcheck");
				ent:SetSwapname("fostersave");
				ent:SetFalsetarget("fosterbed");
				ent:SetSpawnflags("4");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent); 
				
				ent = entity.Spawn();
				ent:SetClassname("target_relay");
				ent:SetTargetname("fosterbed");
				ent:SetTarget("foster");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent); 
				
			game.Print("---Foster-Save Setup...");
				ent = entity.Spawn();
				ent:SetClassname("target_counter");
				ent:SetTargetname("foster_field");
				ent:SetTarget("fostersavecheck");
				ent:SetCount("1");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_boolean");
				ent:SetTargetname("fostersavecheck");
				ent:SetSwapname("fosterbed");
				ent:SetFalsetarget("fostersave");
				ent:SetSpawnflags("4");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent);
				
			game.Print("----Welcome Setup...");
				ent = entity.Spawn();
				ent.SetupTrigger(ent, 16, 128, 96);
				ent:SetClassname("trigger_multiple");
				ent:SetTarget("welcomecount");
				ent:SetWait(1);
				entity.CallSpawn(ent);
				mover.SetPosition(ent, 620, -1424, 336);
				
				ent = entity.Spawn();
				ent:SetClassname("target_counter");
				ent:SetTargetname("welcomecount");
				ent:SetTarget("print_welcome");
				ent:SetCount("1");
				mover.SetPosition(ent, 0, 0, 0);
				entity.CallSpawn(ent);
game.Print("...Done");
end     

-- Functions 

function bed2upscript(ent, other, activator) 
	ent = entity.FindBModel(4); 
	mover.SetPosition(ent, 721, -1600, 461); 
	entity.CallSpawn(ent);
	ent = entity.FindBModel(95);
	entity.Use(ent);
end

function bed2downscript(ent, other, activator) 
	ent = entity.FindBModel(4); 
	mover.SetPosition(ent, 721, -1600, 341); 
	entity.CallSpawn(ent);
	ent = entity.FindBModel(95);
	entity.Use(ent);
end

function bed3upscript(ent, other, activator) 
	ent = entity.FindBModel(121);
	mover.SetPosition(ent, 1161, -1248, 461);
	entity.CallSpawn(ent);   
end

function bed3downscript(ent, other, activator) 
	ent = entity.FindBModel(121);
	mover.SetPosition(ent, 1161, -1248, 341); 
	entity.CallSpawn(ent);   
end
	

function fosterscript(ent, other, activator)
	game.Print("-Start spawnage...");
		game.Print("--T=0-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("openfield");
			ent:SetMessage("Begin!");
			entity.CallSpawn(ent);
			
		game.Print("--T-1-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-1");
			ent:SetWait("9");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-1");
			ent:SetMessage("Rescue the Foster starts in 1");
			entity.CallSpawn(ent);
			
		game.Print("--T-2-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-2");
			ent:SetWait("8");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-2");
			ent:SetMessage("Rescue the Foster starts in 2");
			entity.CallSpawn(ent);
			
		game.Print("--T-3-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-3");
			ent:SetWait("7");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-3");
			ent:SetMessage("Rescue the Foster starts in 3");
			entity.CallSpawn(ent);
			
		game.Print("--T-4-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-4");
			ent:SetWait("6");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-4");
			ent:SetMessage("Rescue the Foster starts in 4");
			entity.CallSpawn(ent);
			
		game.Print("--T-5-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-5");
			ent:SetWait("5");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-5");
			ent:SetMessage("Rescue the Foster starts in 5");
			entity.CallSpawn(ent);
			
		game.Print("--T-6-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-6");
			ent:SetWait("4");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-6");
			ent:SetMessage("Rescue the Foster starts in 6");
			entity.CallSpawn(ent);
			
		game.Print("--T-7-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-7");
			ent:SetWait("3");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-7");
			ent:SetMessage("Rescue the Foster starts in 7");
			entity.CallSpawn(ent);
			
		game.Print("--T-8-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-8");
			ent:SetWait("2");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-8");
			ent:SetMessage("Rescue the Foster starts in 8");
			entity.CallSpawn(ent);
			
		game.Print("--T-9-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_delay");
			ent:SetTargetname("openfielddelay");
			ent:SetTarget("print_-9");
			ent:SetWait("1");
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_-9");
			ent:SetMessage("Rescue the Foster starts in 9");
			entity.CallSpawn(ent);
			
		game.Print("--T-10-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("openfielddelay");
			ent:SetMessage("Rescue the Foster starts in 10");
			entity.CallSpawn(ent);
			
		game.Print("--Saved...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("fostersave");
			ent:SetMessage("Congratulations, You rescued the Foster!");
			entity.CallSpawn(ent);
			
		game.Print("--Failed...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("fosterbed");
			ent:SetMessage("You did not rescue the Foster.");
			entity.CallSpawn(ent);
			
		game.Print("--welcome...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_welcome");
			ent:SetMessage("Welcome to 'Rescue the Foster'!");
			entity.CallSpawn(ent);
end

function weskerscript(ent, other, activator)
	game.Print("-Start spawnage...");
		game.Print("--Model-Mod...");
			ent = entity.Find("foster");
			ent:SetModel("models/mapobjects/borg/borg_munro.md3");
			entity.CallSpawn(ent);
			
		game.Print("--T-10-Stuff...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("openfielddelay");
			ent:SetMessage("Wesker: Fourty Seconds... Forty Seconds is all I can spare to wait for you.");
			entity.CallSpawn(ent);
			
		game.Print("--Saved...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("fostersave");
			ent:SetMessage("Wesker: I suppose I should thank you.");
			entity.CallSpawn(ent);
			
		game.Print("--Failed...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("fosterbed");
			ent:SetMessage("Wesker: YOU FAILED ME!!!");
			entity.CallSpawn(ent);
			
		game.Print("--Welcome...");
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_welcome");
			ent:SetMessage("Wesker: It is in your best intrest to assist me!");
			entity.CallSpawn(ent);
			
		game.Print("--First Aid...");
			ent = entity.Spawn();
			ent.SetupTrigger(ent, 16, 128, 96);
			ent:SetClassname("trigger_multiple");
			ent:SetTarget("aidcount");
			ent:SetWait(1);
			entity.CallSpawn(ent);
			
			mover.SetPosition(ent, 1032, -1248, 336);
			ent = entity.Spawn();
			ent:SetClassname("target_counter");
			ent:SetTargetname("aidcount");
			ent:SetTarget("aidbool");
			ent:SetCount("1");
			
			mover.SetPosition(ent, 0, 0, 0);
			entity.CallSpawn(ent);
			ent = entity.Spawn();
			ent:SetClassname("target_boolean");
			ent:SetTargetname("aidbool");
			ent:SetSwapname("fosterbed");
			ent:SetFalsetarget("print_aid");
			mover.SetPosition(ent, 0, 0, 0);
			entity.CallSpawn(ent);
			
			ent = entity.Spawn();
			ent:SetClassname("target_print");
			ent:SetTargetname("print_aid");
			ent:SetMessage("Wesker: You will give me a can of First-Aid-Spray!");
			entity.CallSpawn(ent);
			
		game.Print("--post rescue...");
			game.Print("---Modelboost-call...");
				ent = entity.Spawn();
				ent:SetClassname("target_relay");
				ent:SetTargetname("fostersave");
				ent:SetLuaUse("boomwesker");
				entity.CallSpawn(ent);
				
			game.Print("---Prepare...");
				ent = entity.Spawn();
				ent:SetClassname("target_delay");
				ent:SetTargetname("fostersave");
				ent:SetTarget("print_prepare");
				ent:SetWait("5");
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_print");
				ent:SetTargetname("print_prepare");
				ent:SetMessage("Wesker: Now Prepare yourselfs...");
				entity.CallSpawn(ent);
				
			game.Print("---Complete...");
				ent = entity.Spawn();
				ent:SetClassname("target_delay");
				ent:SetTargetname("fostersave");
				ent:SetTarget("print_complete");
				ent:SetWait("8");
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_print");
				ent:SetTargetname("print_complete");
				ent:SetMessage("Wesker: ... for COMPLETE, ");
				entity.CallSpawn(ent);
				
			game.Print("---Global...");
				ent = entity.Spawn();
				ent:SetClassname("target_delay");
				ent:SetTargetname("fostersave");
				ent:SetTarget("print_global");
				ent:SetWait("10");
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_print");
				ent:SetTargetname("print_global");
				ent:SetMessage("Wesker: GLOBAL,");
				entity.CallSpawn(ent);
				
			game.Print("---saturation...");
				ent = entity.Spawn();
				ent:SetClassname("target_delay");
				ent:SetTargetname("fostersave");
				ent:SetTarget("print_saturation");
				ent:SetWait("12");
				entity.CallSpawn(ent);
				
				ent = entity.Spawn();
				ent:SetClassname("target_print");
				ent:SetTargetname("print_saturation");
				ent:SetMessage("Wesker: SATURATION!!!");
				entity.CallSpawn(ent);
				
			game.Print("---BANG...");
				ent = entity.Spawn();
				ent:SetClassname("target_delay");
				ent:SetTargetname("fostersave");
				ent:SetTarget("foster");
				ent:SetWait("14");
				entity.CallSpawn(ent);
end

function boomwesker(ent, other, activator)
	ent = entity.Find("foster");
	ent:SetKeyValue("material", "0");
	ent:SetSplashDamage("99999");
	ent:SetSplashRadius("99999");
	entity.CallSpawn(ent);
end 

--Sounds

function borglcarswitch(ent, other, activator)
    sound.PlaySound(entity.FindBModel(4), "sound/movers/switches/borglcarswitch.mp3", 0);
end