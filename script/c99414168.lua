Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

Duel.LoadScript("cube-attrib-rotation.lua")

--精霊術師 ドリアード
local s,id=GetID()
function s.initial_effect(c)
	c:EnableReviveLimit()
	--Attribute
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetCode(EFFECT_ADD_ATTRIBUTE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetValue(0xf)
	c:RegisterEffect(e1)
end
s.listed_names={23965037}