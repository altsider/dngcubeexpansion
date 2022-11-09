Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--ガルマソード
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
end
s.listed_names={78577570}