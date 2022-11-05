Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

--要塞クジラの誓い
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,7,nil,62337487)
end
