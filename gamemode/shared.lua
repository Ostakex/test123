GM.Name = "Roleplayer"
GM.Author = "BillGates"
GM.Email = "N/A"
GM.Website = "N/A"


/*
Not sure if this is needed it works with only the settings in player.lua
team.SetUp( 0, "Blue", Color(0, 0, 255) )
team.SetUp( 1, "Red", Color(255, 0, 0) )
*/

function GM:Initialize()
	self.BaseClass.Initialize( self )
end