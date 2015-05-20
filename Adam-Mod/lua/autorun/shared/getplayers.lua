function GetPlayers(name, ply)
	local players = {}
	if not name() then
		ply:ChatPrint('No players found.')
	end
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
