Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--覚醒の証
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,4,nil,10789972)
end
