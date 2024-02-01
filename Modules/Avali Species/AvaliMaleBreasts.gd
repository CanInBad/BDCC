extends "res://Modules/Avali Species/AvaliBreasts.gd"

func _init():
	visibleName = "Avali Male breasts"
	id = "avaliMalebreasts"
	size = BreastsSize.FOREVER_FLAT

func getLewdAdjective():
	return RNG.pick(["fluffy", "strong"])

func getLewdName():
	if(size <= BreastsSize.A):
		return "pecs"

	return RNG.pick(["manbreasts", "manboobs", "mantits", "jugs", "orbs"])

func safeWhenExposed():
	if(size <= BreastsSize.A):
		return true
	
	return false

func generateDataFor(_dynamicCharacter):
	pass

#Game logic is funky and requires a bit of a hack to get the breasts spawning on the correct genders
func npcGenerationWeight(_dynamicCharacter):
	if(_dynamicCharacter.getGender() in [Gender.Male]):
		return 100000.0
	return 0.0
