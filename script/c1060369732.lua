Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

--大邪神の儀式
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,8,nil,62420419)
end
