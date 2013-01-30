include( 'shared.lua' ) //LOAD THAT
 
function set_team() //Function for the window when joining as neither special character nor Admin
 
Ready = vgui.Create( "DFrame" ) //Define ready as a "DFrame"
Ready:SetPos( ScrW() / 2, ScrH() / 2 ) //Set the position. Half the screen height and half the screen width. This will result in being bottom right of the middle of the screen.
Ready:SetSize( 175, 75 ) //The size, in pixels of the Frame
Ready:SetTitle( "Agree to the rules?" ) //The title; It's at the top.
Ready:SetVisible( true ) // Should it be seen? 
Ready:SetDraggable( false ) // Can people drag it around?
Ready:ShowCloseButton( true ) //Show the little X top right? I chose no, because I have no alternative, meaning people would roam around with no weapons
Ready:MakePopup() //Make it popup. Of course.
 
ready1 = vgui.Create( "DButton", Ready ) // Define ready1 as a "DButton" with its parent the Ready frame we just created above.
ready1:SetPos( 20, 25 ) //Set position, relative to the frame (If you didn't parent it, it would be relative to the screen
ready1:SetSize( 140, 40 ) // How big it should be, again in pixels
ready1:SetText( "Yes" ) //What should the button say? 
ready1.DoClick = function() //ready1.doclick = function, we just defined it as a function
RunConsoleCommand( "sb_team1" ) //When it clicks, which function does it run? sb_team1, which is defined in init.lua
 
end // end the doclick function
 
end // end the set_team function
 
concommand.Add( "sb_start", set_team ) //Now we add a console command for the function we just created. It can be run straight from the console. If you look under the first couple of lines under init.lua, we
// said that it should run this command!