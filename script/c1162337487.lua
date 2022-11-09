Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--要塞クジラ
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
end
s.listed_names={77454922}