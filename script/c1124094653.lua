Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("./cube/script/card_counter_constants.lua")
--融合
--Polymerization
local s,id=GetID()
function s.initial_effect(c)
	Fusion.RegisterSummonEff(c)
end