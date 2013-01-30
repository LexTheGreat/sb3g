AddCSLuaFile( "cl_init.lua" ) //dl that
AddCSLuaFile( "shared.lua" ) //dl that too
AddCSLuaFile( "specialchars.lua" ) //and this
 
 
include( 'shared.lua' ) //load that
include( 'specialchars.lua' ) //This too.
 
 
function GM:PlayerSpawn( ply )  //What happens when the player spawns
 
    self.BaseClass:PlayerSpawn( ply )   // Lines 12 through 18 are all fixes to the sandbox glitch. Don't change
										// them unless you know what you're doing.
    ply:SetGravity( 0.75 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 325 )  
	ply:SetRunSpeed( 325 ) 
 
end
 
function GM:PlayerInitialSpawn( ply )  // When spawning after joining the sever
	CheckSpecialCharacters( ply ) //Is he defined in the specialchars.lua file? If yes, then he gets those values, and it stops here.
	if ply:IsAdmin() then //Is the connecting player admin?
		sb_team2( ply ) //If he is then set his team to team 2.
	else // If he isn't admin then,
	joining( ply ) //Call the function joining (found near the bottom of this file)
	-- ply:ConCommand( "sb_start" ) If you want to take of anti minge then take out the -- 
	end //Close the if
end //close the function
 
 
function GM:PlayerLoadout( ply ) // What should the player recieve when joining a team?
 
	if ply:Team() == 1 then //If he is team 1, then give him the following items
 
		ply:Give( "weapon_physcannon" ) // A Gravity gun
		ply:Give( "weapon_physgun" ) // A Physics gun
		ply:Give( "gmod_tool" ) // and don't forget the tool gun!
 
 
	elseif ply:Team() == 2 then // So if he isn't team 1, he could be team 2?
 
		ply:Give( "weapon_physcannon" ) //Assuming he is, then give him Gravity gun
		ply:Give( "weapon_physgun" ) // Physics gun
		ply:Give( "gmod_tool" ) // and the gmod tool
 
	end //right here.
end // End the function
 
function sb_team1( ply )
 
	ply:UnSpectate() //Since he was set to spectate until he presses the 'hell yeah' button, we now unspecatate him
	ply:SetTeam( 1 ) //We set his team to one, a.k.a 'guest'
	ply:Spawn() //Spawn the player
	ply:PrintMessage( HUD_PRINTTALK, "[SpaceBuild] Welcome to the server, " .. ply:Nick() ) //Gives the message [SimpleBuild]Welcome to the server, (playername here)"  in the talk area.
 
end //End the function.
 
 
function sb_team2( ply )

	ply:SetTeam( 2 ) //Set his team to team 2.
	ply:Spawn() // Spawn him
	ply:PrintMessage( HUD_PRINTTALK, "[SpaceBuild] I recognize you as an admin, " .. ply:Nick() ) //Again, a message in the talk area. 
	//This time saying "[SpaceBuild] I recognize you as an admin (playername here)" 
 
end //End this function
concommand.Add( "sb_team1", sb_team1 ) //Now, we make sure that when we enter sb_team1 into console that it calls the function. This is KEY. Otherwise players won't be able to play.
 
function joining( ply ) // The function that's called when the player is not admin or a special character, at the top.
 
	ply:Spectate( 5 ) //Set him to spectate in free-roam mode. He doesn't actually fly around, since he has a window open at this point.
	ply:SetTeam( 3 ) //Set his team to Joining
 
end //End the function

function chatCommand( ply, text, public )
    if (string.sub(text, 1, 5) == "/play") then --if the first 4 letters are /play, Do
         ply:ConCommand( "sb_start" )
         return(false) --Hides the "/play" from chat
    end
end