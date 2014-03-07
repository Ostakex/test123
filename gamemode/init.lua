AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("database/cl_database.lua")

include("shared.lua")
include("player.lua")
include("database/database.lua")


//This happens first when the player connects
function GM:PlayerConnect( name, ip )
	print("Player: " .. name .. ", has joined the game.")
end
//This is the second thing that happens when a player connects
function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Player: " .. ply:Nick() .. ", has gotten authed.")
	ply:databaseCheck()
end
//And this is the third thing that happens when a player connects
function GM:PlayerInitialSpawn( ply )
	print("Player: " .. ply:Nick() .. ", has spawned.")
	ply:SetGamemodeTeam( 2 )
end

function GM:PlayerSpawn(ply)
	ply:SetModel("models/player/group01/male_07.mdl")
	ply:GiveGamemodeWeapons()
end

function GM:PlayerDisconnected( ply )
	ply:databaseDisconnect()
end



//Allows noclip for admins on the server works with assmod
function GM:PlayerNoClip(ply)
	return ply:IsAdmin()
end