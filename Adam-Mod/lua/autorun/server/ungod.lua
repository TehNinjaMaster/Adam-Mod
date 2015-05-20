---[[God command]]
function GetPlayers(name)
	local players = {}
	if not name then
	return end
	for k, v in pairs(player.GetAll()) do
		if(v:GetName():lower():match(name:lower())) then
			
				table.insert(players, v)
			
			end
		
		end
		
		if(table.Count(players) == 0) then
		
			MsgN('[ADMIN] No players found!');
			return false
			
		end
		if(table.Count(players) > 1) then
		
			MsgN('[ADMIN] There are multiable players!');
			return false
		end
		
		return players[1]
		
	end
--[[Made by Adam]]

hook.Add('PlayerSay', 'ungod', function(ply, text, isteam)
	local text = string.lower(text)
		if(string.sub(0, 6) == '!ungod') then
			local text = string.Explode(' ', text)
			
	local victim = GetPlayers(text[2])
	if not victim then
		if(IsValid(ply)) then
			ply:GodDisable()
			PrintMessage(HUD_PRINTTALK, ply:Nick()..' has diabled god for them self.')
		return end
	if(IsValid(victim)) then
		victim:GodDisable()
	end
	return '';
	end
	end
end )

--[[end of ban.]]