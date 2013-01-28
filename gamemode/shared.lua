GM.Name		= "Spacebuild 3" //What is your Gamemode's name?
GM.Author	= "Lex_The_Great" // Who authored it?
GM.Email	= "lexkymbeth@gmail.com" //Your email?
GM.Website  = "soulzinc.com" //Website, only if you feel it
DeriveGamemode( "sandbox" ) //Derive from Sandbox. If you want the Q menu's and Garry's scoreboard, keep this.
 
team.SetUp( 1, "Guest", Color( 125, 125, 125, 255 ) ) //Team guest
team.SetUp( 2, "Admin", Color( 255, 255, 255, 255 ) ) //Team admin
team.SetUp( 3, "Joining", Color( 0, 0 , 0, 255 ) ) //Joining