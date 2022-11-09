Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--奇跡の方舟
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,8,nil,86327225)
end
