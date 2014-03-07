AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("database/cl_database.lua")
AddCSLuaFile("database/items.lua")
AddCSLuaFile("commands.lua")

include("shared.lua")
include("player.lua")
include("database/database.lua")
include("database/items.lua")
include("commands.lua")

util.AddNetworkString( "KEY_Q" )

function GM:PlayerConnect( name, ip )
	print("Player: " .. name .. ", has joined the game.")
end

function GM:PlayerInitialSpawn( ply )
	print("Player: " .. ply:Nick() .. ", has spawned.")
	ply:SetGamemodeTeam( 0 )
end

function GM:PlayerSpawn( ply )
	ply:SetModel("models/player/group01/male_07.mdl")
	ply:GiveGamemodeWeapons()
end

function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Player: " .. ply:Nick() .. ", has gotten authed.")
	ply:databaseCheck()
end

function GM:PlayerDisconnected( ply )
	ply:databaseDisconnect()
end

net.Receive("KEY_Q", function(len, ply)
	hook.Call("KEY_Q", GAMEMODE, ply)
end)


local function DisableNoclip( ply )
end
hook.Add( "PlayerNoClip", "FeelFreeToTurnItOff", function( ply, desiredState )
	if ( desiredState == false ) then -- the player wants to turn noclip off
		return true -- always allow
	elseif ( ply:IsAdmin() ) then
		return true -- allow administrators to enter noclip
	elseif ( !ply:IsAdmin() ) then
		//print( ply:Name() .. " Was trying to noclip.")
		return false
	end
end )

