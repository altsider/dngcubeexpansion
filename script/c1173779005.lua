Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--Attribute Rotation
local script, id = GetID()

function script.initial_effect(card)
	--pendulum summon
	Pendulum.AddProcedure(card)
	--to hand
	local e2=Effect.CreateEffect(card)
	e2:SetCategory(CATEGORY_TOHAND+CATEGORY_SEARCH)
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_O)
	e2:SetCode(EVENT_BATTLED)
	e2:SetRange(LOCATION_PZONE)
	e2:SetCountLimit(1)
	e2:SetCondition(script.thcon)
	e2:SetTarget(script.thtg)
	e2:SetOperation(script.thop)
	card:RegisterEffect(e2)
	
	-- Doubles/halves ATK/DEF based on Attributes

	local atk_effect = Effect.CreateEffect(card)
	atk_effect:SetType(EFFECT_TYPE_SINGLE)
	atk_effect:SetProperty(EFFECT_FLAG_SINGLE_RANGE+EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_CANNOT_NEGATE)
	atk_effect:SetRange(LOCATION_MZONE)
	atk_effect:SetCode(EFFECT_SET_ATTACK_FINAL)
	atk_effect:SetCondition(script.condition)
	atk_effect:SetValue(script.apply_change_atk)
	card:RegisterEffect(atk_effect)

	local def_effect_1 = Effect.CreateEffect(card)
	def_effect_1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_CANNOT_NEGATE)
	def_effect_1:SetType(EFFECT_TYPE_SINGLE)
	def_effect_1:SetCode(EFFECT_AVOID_BATTLE_DAMAGE)
	def_effect_1:SetValue(script.limit_attribute)
	card:RegisterEffect(def_effect_1)

	local def_effect_2 = Effect.CreateEffect(card)
	def_effect_2:SetProperty(EFFECT_FLAG_CANNOT_DISABLE+EFFECT_FLAG_CANNOT_NEGATE)
	def_effect_2:SetType(EFFECT_TYPE_SINGLE)
	def_effect_2:SetCode(EFFECT_INDESTRUCTABLE_BATTLE)
	def_effect_2:SetValue(script.limit_attribute)
	card:RegisterEffect(def_effect_2)
end

function script.condition(effect)
	local current_phase = Duel.GetCurrentPhase()
	local battle_target = effect:GetHandler():GetBattleTarget()

	local correct_phase = (current_phase == PHASE_DAMAGE or current_phase == PHASE_DAMAGE_CAL)

	return correct_phase and battle_target
end

function script.apply_change_atk(effect, card)
	local target = effect:GetHandler():GetBattleTarget()
	local attack = effect:GetHandler():GetAttack()

	local attribute	= Card.GetAttribute(card)
	local inferior 	= GET_INFERIOR[attribute]

	if target:IsAttribute(inferior) then
		attack = attack * 2
	end

	return attack
end

function script.limit_attribute(effect, card)
	local attribute = Card.GetAttribute(effect:GetHandler())
	local opposite 	= GET_OPPOSITE[attribute]

	return card and card:IsAttribute(opposite)
end

function script.thcon(e,tp,eg,ep,ev,re,r,rp)
	local a=Duel.GetAttacker()
	local d=Duel.GetAttackTarget()
	if not d then return false end
	if d:IsControler(tp) then a,d=d,a end
	return a:IsType(TYPE_NORMAL)
		and not a:IsStatus(STATUS_BATTLE_DESTROYED) and d:IsStatus(STATUS_BATTLE_DESTROYED)
end
function script.filter(c)
	return c:IsType(TYPE_NORMAL) and c:IsLevelAbove(4) and c:IsAbleToHand()
end
function script.thtg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return Duel.IsExistingMatchingCard(script.filter,tp,LOCATION_DECK,0,1,nil) end
	Duel.SetOperationInfo(0,CATEGORY_TOHAND,nil,1,tp,LOCATION_DECK)
end
function script.thop(e,tp,eg,ep,ev,re,r,rp)
	if not e:GetHandler():IsRelateToEffect(e) then return end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_ATOHAND)
	local g=Duel.SelectMatchingCard(tp,script.filter,tp,LOCATION_DECK,0,1,1,nil)
	if #g>0 then
		Duel.SendtoHand(g,nil,REASON_EFFECT)
		Duel.ConfirmCards(1-tp,g)
	end
end