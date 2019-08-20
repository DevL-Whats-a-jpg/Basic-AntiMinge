-- Made by DevL, the guy that makes things for free but is shitty at making said things.

-- this will only protect stuff if a player is prop pushing, not throwing
-- ima update this at some point with a delay to fix that

function PPOn(ply , ent)

	ent:SetColor(Color(100,100,100)) -- set this to the color you want it to be whild NoCollided
	ent:SetCollisionGroup(1) -- 1 for NoCollide Players  20 for Players and Props
	ent:SetMaterial("models/wireframe") -- The Material you want it set to "" is default

end

function PPOff(ply , ent)

	ent:SetColor(Color(255,255,255))
	ent:SetCollisionGroup(0)
	ent:SetMaterial("") 
end

hook.Add("PhysgunPickup" , "oof" , PPOn)
hook.Add("PhysgunDrop" , "yeet" , PPOff)
-- if you have any scripts that use "oof" or "yeet" as a hook ID you should prob change those