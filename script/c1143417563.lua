Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--踊りによる誘発
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,6,nil,4849037)
end
