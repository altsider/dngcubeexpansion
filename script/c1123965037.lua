Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--ドリアードの祈り
local s,id=GetID()
function s.initial_effect(c)
	Ritual.AddProcGreaterCode(c,3,nil,99414168)
end