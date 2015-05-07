function GetPlayers(name)
		
		local players = {}
		
		for k, v in pairs(player.GetAll()) do
		
			if(v:GetName():lower():match(name:lower())) then
			
				table.insert(players, v)
			
			end
		
		end
		
		if(table.Count(players) == 0) then
		
			MsgN('[ADMIN] No players found!')
			return false
			
		end
		if(table.Count(players) > 1) then
		
			MsgN('[ADMIN] There are multiable players!')
			return false
		end
		
		return players[1]
		
	end

--[[hook.Add('PlayerSay', 'help', function(ply, text, isteam)

	text = string.lower(text)
	
	if(string.sub(text, 0, 6, ) == '!admin') then
		text = string.Explode(' ', text)
		
		
		local victim = GetPlayers()
		
		if(IsValid(victim)) then
		PrintMessage(HUD_PRINTTALK, ply:Nick()..' has asked for Admin help!')
		
		end

end )]]--

hook.Add('PlayerSay', 'Banz!', function(ply, text, isteam)

	local text = string.lower(text)
	
	if(string.sub(text, 0, 4 ) == '!ban') then
		text = string.Explode(' ', text)
		
		local victim = GetPlayers(text[2])
		local reason = GetPlayers(text[4])
		local time = GetPlayers(text[3])
		if(IsValid(victim)) then
		victim:ban(time)
		victim:kick(reason)
		end
		return '';
	end
end )

hook.Add('PlayerSay', 'kick', function(ply, text, isteam)
	
	local text = string.lower(text)
	
	if(string.sub(text, 0, 5) == '!kick') then
		text = string.Explode(' ', text)
		
		
	local victim = GetPlayers(text[2])
	local reason = GetPlayers(text[3])
	if(IsValid(victim)) then
	victim:kick('Kicked by '..ply:Nick()..' for '..reason)
	ply:PrintMessage(HUD_PRINTTALK, ply:Nick()..' has kicked'..victim:Nick()..' for '..reason)
	end
	return '';
	end
end )