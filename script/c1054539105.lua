Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

--ライオンの儀式
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,7,nil,33951077)
end
