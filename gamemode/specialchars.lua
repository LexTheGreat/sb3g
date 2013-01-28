function CheckSpecialCharacters( ply ) //This function is called upon on GM:PlayerInitialSpawn
 
	--Sample
	-- if ( ply:SteamID() == "STEAM_0:1:7880281" ) then //If steamid is that, then execute the following
 
	--	ply:PrintMessage( HUD_PRINTTALK, "Welcome back, " .. ply:Nick() .. "\nYou connected under the IP: " .. ply:IPAddress() ) // Gives the message
	--	//Welcome back Player, you have connected under the IP: blah. In local multiplayer it will be loopback.
	--	ply:SetTeam( 2 ) //Set it to this team, look in shared.lua for this one.
	--	// He should recieve the following weapons
	--	ply:Give( "weapon_crowbar" )
	--	ply:Give( "weapon_pistol" )
	--	ply:Give( "weapon_smg1" )
	--	ply:Give( "weapon_frag" )
	--	ply:Give( "weapon_physcannon" )
	--	ply:Give( "gmod_tool" )
	--  ply:Give( "weapon_physgun" )
	--end //end this if
	--For other characters, use elseif for example
	--elseif (ply:SteamID() == "STEAM 02984529" ) then 
	--ply:SetTeam( 2 ) 
	--etc. etc.
end