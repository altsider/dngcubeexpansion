Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--ガルマソードの誓い
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,7,nil,90844184)
end
