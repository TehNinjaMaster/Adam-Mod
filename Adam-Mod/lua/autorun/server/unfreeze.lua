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
hook.Add('PlayerSay', 'unfreeze', function(ply, text, isteam)
	local text = string.lower(text)
		if(string.sub(text, 0, 9) == '!unfreeze') then
			local text = string.Explode(' ', text)
	// Get players being the function above.
	local victim = GetPlayers(text[2])
	if not victim then
		ply:ChatPrint('No players found!')
	return end
	if(IsValid(victim)) then
		if(victim:IsFrozen() == false) then
			ply:ChatPrint(victim:Nick()..' is not frozen!')
	return end
		victim:Freeze(false)
		victim:
		PrintMessage(HUD_PRINTTALK, ply:Nick()..' has unfrozen '..victim:Nick())
	end
	return '';
	end

end )
else
return end
--[[end of kick.]]