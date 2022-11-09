Duel.LoadScript("cube-attrib-rotation.lua")
Duel.LoadScript("card_counter_constants.lua")
--Attribute Rotation
local script, id = GetID()

function script.initial_effect(card)
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

	local attribute = Card.GetAttribute(card)
	local superior 	= GET_SUPERIOR[attribute]

	if target:IsAttribute(superior) then
		attack = attack * 2
	end

	return attack
end

function script.limit_attribute(effect, card)
	local attribute = Card.GetAttribute(effect:GetHandler())
	local opposite 	= GET_OPPOSITE[attribute]

	return card and card:IsAttribute(opposite)
end