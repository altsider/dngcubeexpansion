Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--召喚獣メガラニカ
local s,id=GetID()
function s.initial_effect(c)
	--fusion material
	c:EnableReviveLimit()
	Fusion.AddProcMix(c,true,true,86120751,aux.FilterBoolFunctionEx(Card.IsAttribute,ATTRIBUTE_EARTH))
end
