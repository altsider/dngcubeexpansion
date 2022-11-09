Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--ジェムナイト・パール
local s,id=GetID()
function s.initial_effect(c)
	--xyz summon
	Xyz.AddProcedure(c,nil,4,2)
	c:EnableReviveLimit()
end
