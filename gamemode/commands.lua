concommand.Add( "citizen",function( ply )
	ply:SetGamemodeTeam( 0 )
	ply:PrintMessage( HUD_PRINTTALK, "You are now a citizen")
    print( ply:Name().." Is now citizen" )
end )
concommand.Add( "police",function( ply )
	ply:SetGamemodeTeam( 1 )
	ply:PrintMessage( HUD_PRINTTALK, "You are now police officer")
    print( ply:Name().." Is now police officer" )
end )
concommand.Add( "mayor",function( ply )
	ply:SetGamemodeTeam( 2 )
	ply:PrintMessage( HUD_PRINTTALK, "You are now mayor")
    print( ply:Name().." Is now mayor" )
end )