--[[player pickup, by adam]]

hook.Add('PhysgunPickup', 'PickZePlayer', function(ply, ent)
   if (ply:IsAdmin() && IsValid(ent) && ent:IsPlayer()) then
      return false;
   end
   end)
 