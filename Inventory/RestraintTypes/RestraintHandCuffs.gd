extends RestraintData
class_name RestraintHandCuffs

func _init():
	restraintType = RestraintType.WristCuffs

func doStruggle(_pc, _minigame):
	var _handsFree = !_pc.hasBlockedHands()
	var _armsFree = !_pc.hasBoundArms()
	var _legsFree = !_pc.hasBoundLegs()
	var _canSee = !_pc.isBlindfolded()
	var _canBite = !_pc.isBitingBlocked()
	
	var text = "error?"
	var lust = 0
	var pain = 0
	var damage = 0
	var stamina = 0
	
	if(_handsFree && _canBite):
		text = "{user.name} uses {user.his} hands and mouth to try and take off the handcuffs without unlocking them."
		damage = calcDamage(_pc)
		stamina = 10
		
		if(failChance(_pc, 20)):
			text += " {user.name} finds {user.himself} drooling a lot."
			lust = scaleDamage(5)
	elif(_handsFree):
		text = "{user.name} can't use {user.his} mouth but {user.he} can just about reach the handcuffs with {user.his} hands. {user.name} is tugging on the restrant, trying to slip it off."
		damage = calcDamage(_pc, 0.8)
		stamina = 10
	elif(_canBite):
		text = "{user.name} is trying to wiggle the handcuffs off. Not being able to use hands really sucks but using {user.his} mouth instead helps {user.him} to keep them still."
		damage = calcDamage(_pc, 0.7)
		stamina = 10
		
		if(failChance(_pc, 40)):
			text += " {user.name} finds {user.himself} drooling a lot."
			lust = scaleDamage(5)
	else:
		text = "{user.name} tries to helplessly wiggle the handcuffs off."
		damage = calcDamage(_pc, 0.5)
		stamina = RNG.randi_range(10, 20)
		
		if(failChance(_pc, 20)):
			text += " Ow! {user.name} accidently smashed them against "+RNG.pick(["the wall", "the ground", "something"])
			pain = scaleDamage(RNG.randi_range(5, 10))
	
	return {"text": text, "damage": damage, "lust": lust, "pain": pain, "stamina": stamina}
