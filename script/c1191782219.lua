Duel.LoadScript("cube-attrib-rotation.lua")

--クラブ・タートル
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
end
s.listed_names={76806714}