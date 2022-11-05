Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

--ジャベリンビートルの契約
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,8,nil,26932788)
end
