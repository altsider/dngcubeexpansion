Duel.LoadScript("cube-attrib-rotation.lua")

--神殿を守る者
local s,id=GetID()
function s.initial_effect(c)
	--cannot draw
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_FIELD)
	e1:SetProperty(EFFECT_FLAG_PLAYER_TARGET)
	e1:SetCode(EFFECT_CANNOT_DRAW)
	e1:SetRange(LOCATION_MZONE)
	e1:SetTargetRange(0,1)
	e1:SetCondition(s.con)
	c:RegisterEffect(e1)
end
function s.con(e)
	return Duel.GetCurrentPhase()~=PHASE_DRAW
end
