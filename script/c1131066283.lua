Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--スカルライダーの復活
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,6,nil,99721536)
end
