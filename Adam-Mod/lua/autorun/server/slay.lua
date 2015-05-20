---[[Kick command]]
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

if SERVER then
hook.Add('PlayerSay', 'slay', function(ply, text, isteam)
	local text = string.lower(text)
		if(string.sub(text, 0, 5) == '!slay') then
			local text = string.Explode(' ', text)
	
	local victim = GetPlayers(text[2])
	if not victim then
		ply:ChatPrint('No players found!')
	return end
	if(IsValid(victim)) then
		if not ply:Alive() then
			ply:ChatPrint('Player is already dead.')
		end
		victim:Kill()
		PrintMessage(HUD_PRINTTALK, ply:Nick()..' has killed '..victim:Nick())
	end
	return '';
	end

end )
else
return end
--[[end of kick.]]