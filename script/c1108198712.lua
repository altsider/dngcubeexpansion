Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--エンド・オブ・ザ・ワールド
--End of the World
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcEqualCode(c,nil,nil,72426662,46427957)
end