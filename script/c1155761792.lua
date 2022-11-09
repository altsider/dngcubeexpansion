Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--カオスの儀式
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,8,nil,5405694)
end
