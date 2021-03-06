-- Startup
function InitGame(levelTime, randomSeed, restart)
	game.Print("Lua Level Init...");
	game.Print("-map_restart ...");
		game.Print("--workaround-setup ...");
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "target_levelchange");
			ent:SetKeyValue("targetname", "map_restart");
			ent:SetKeyValue("target", "dn4");
			entity.CallSpawn(ent);
		game.Print("--trigger-setup ...");
		if restart == 1 then
			game.ClientPrint(-1, "Please don't use map_restart, use map or devmap instead.");
			game.Print("Please don't use map_restart, use map or devmap instead.");
			ent = entity.Find("map_restart")
			entity.Use(ent)
		end    
	game.Print("-plasma tube..."); 
		game.Print("--usable snap...");
			ent = entity.FindBModel(52);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
			ent = entity.FindBModel(53);
			ent:SetKeyValue("team", "2");
			entity.CallSpawn(ent);
		game.Print("--visuals...");
			ent = entity.FindBModel(54);
			ent:SetKeyValue("material", "1");
			entity.CallSpawn(ent);  
			ent = entity.FindBModel(55);
			ent:SetKeyValue("targetname", "glassa");
			ent:SetKeyValue("target", "glassb");
			ent:SetKeyValue("material", "2");
			entity.CallSpawn(ent); 
			ent = entity.FindBModel(56);
			ent:SetKeyValue("targetname", "glassb"); 
			ent:SetKeyValue("target", "glassa");
			ent:SetKeyValue("material", "2");
			entity.CallSpawn(ent);
		game.Print("--background..."); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "target_relay");
			ent:SetKeyValue("target", "explodo2count");
			ent:SetKeyValue("targetname", "glassa");
			entity.CallSpawn(ent); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "target_relay");
			ent:SetKeyValue("target", "explodo2count");
			ent:SetKeyValue("targetname", "glassb");
			entity.CallSpawn(ent);
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "target_counter");
			ent:SetKeyValue("targetname", "explodo2count");
			ent:SetKeyValue("target", "explodo2");
			ent:SetKeyValue("count", "1");
			entity.CallSpawn(ent); 
		game.Print("--explosives...");  
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt1");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 0); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt1");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 0); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 32); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt2");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 32); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt3");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 64); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt3");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 64); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt4");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 96); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt4");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 96); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt5");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 128); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt5");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 128); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt6");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 160); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt6");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 160); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "info_notnull");
			ent:SetKeyValue("targetname", "fxtgt7");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1592, 192); 
			ent = entity.Spawn();
			ent:SetKeyValue("classname", "fx_surface_explosion");
			ent:SetKeyValue("targetname", "explodo2");
			ent:SetKeyValue("target", "fxtgt7");
			ent:SetKeyValue("spawnflags", "2");
			entity.CallSpawn(ent);
			mover.SetPosition(ent, 688, -1664, 192); 
	game.Print("-breakable-mod...");
		ent = entity.FindBModel(20);
		ent:SetKeyValue("classname", "func_static");
		entity.CallSpawn(ent); 
		ent = entity.FindBModel(37);
		ent:SetKeyValue("classname", "func_static");
		entity.CallSpawn(ent); 
		ent = entity.FindBModel(38);
		ent:SetKeyValue("classname", "func_static");
		entity.CallSpawn(ent); 
		ent = entity.FindBModel(39);
		ent:SetKeyValue("classname", "func_static");
		entity.CallSpawn(ent); 
	game.Print("-setting up boss-lift..."); 
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "target_delay");
		ent:SetKeyValue("targetname", "bossdelay");
		ent:SetKeyValue("target", "pootovator");
		ent:SetKeyValue("wait", "15");
		entity.CallSpawn(ent);
		entity.Use(ent);
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "target_relay");
		ent:SetKeyValue("target", "bossdelay");
		ent:SetKeyValue("targetname", "pootovator");
		entity.CallSpawn(ent);  
	game.Print("-setting up endroom doors and switch...");
		ent = entity.FindBModel(28);
		ent:SetKeyValue("targetname", "bossdoor");
		ent:SetKeyValue("angle", "0");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "40");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);  
		ent = entity.FindBModel(29); 
		ent:SetKeyValue("targetname", "bossdoor");
		ent:SetKeyValue("angle", "0");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "32");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);  
		ent = entity.FindBModel(30); 
		ent:SetKeyValue("targetname", "bossdoor");
		ent:SetKeyValue("angle", "180");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "40");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);  
		ent = entity.FindBModel(31);
		ent:SetKeyValue("targetname", "bossdoor");
		ent:SetKeyValue("angle", "180");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "32");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent); 
		ent = entity.FindBModel(41);
		ent:SetKeyValue("classname", "func_usable");
		ent:SetKeyValue("target", "bossdoor");
		ent:SetKeyValue("luaUse", "sound41");
		ent:SetKeyValue("wait", "5");
		ent:SetKeyValue("spawnflags", "8");
		entity.CallSpawn(ent); 
		entity.Remove(entity.Find("nego")); 
	game.Print("-setting up start doors ...");
		ent = entity.FindBModel(24);
		ent:SetKeyValue("angle", "270");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "40");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);  
		entity.Use(ent); 
		ent = entity.FindBModel(25);
		ent:SetKeyValue("angle", "270");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "32");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);    
		entity.Use(ent); 
		ent = entity.FindBModel(26);
		ent:SetKeyValue("angle", "90");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "40");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);  
		entity.Use(ent); 
		ent = entity.FindBModel(27);
		ent:SetKeyValue("angle", "90");
		ent:SetKeyValue("wait", "-1");
		ent:SetKeyValue("speed", "25");
		ent:SetKeyValue("count", "32");
		ent:SetKeyValue("spawnflags", "4");
		entity.CallSpawn(ent);    
		entity.Use(ent);  
	game.Print("-Setting up spawnpoints..."); 
		entity.RemoveSpawns();
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "info_player_deathmatch");
		mover.SetPosition(ent, 664, 772, 80); 
		mover.SetAngles(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "info_player_deathmatch");
		mover.SetPosition(ent, 696, 804, 80); 
		mover.SetAngles(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "info_player_deathmatch");
		mover.SetPosition(ent, 696, 740, 80); 
		mover.SetAngles(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "info_player_deathmatch");
		mover.SetPosition(ent, 632, 804, 80); 
		mover.SetAngles(ent, 0, 0, 0);
		entity.CallSpawn(ent);
		ent = entity.Spawn();
		ent:SetKeyValue("classname", "info_player_deathmatch");
		mover.SetPosition(ent, 632, 740, 80); 
		mover.SetAngles(ent, 0, 0, 0);
		entity.CallSpawn(ent);
game.Print("...Done");
end  

-- Else

function sound41(ent, other, activator)
    sound.PlaySound(entity.FindBModel(41), "sound/ambience/dreadnaught/dnlcarpattern1.wav", 0);
end