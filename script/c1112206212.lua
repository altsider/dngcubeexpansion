Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--ハーピィ・レディ三姉妹
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
end
