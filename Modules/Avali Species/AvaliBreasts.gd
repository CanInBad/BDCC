extends BodypartBreasts

func _init():
	visibleName = "Avali breasts"
	id = "avalibreasts"
	size = BreastsSize.C

# {FOREVER_FLAT = -1, FLAT = 0, A = 1, B = 2, C = 3, D = 4, DD = 5, E = 6, EE = 7, F = 8, FF = 9, G = 10, GG = 11}

func getCompatibleSpecies():
	return ["avali"]

func getBreastsScale():
	var thesize = getSize()
	return BreastsSize.breastSizeToBoneScale(thesize)

func getDoll3DScene():
	var thesize = getSize()
	if(thesize <= BreastsSize.FLAT):
		return "res://Modules/Avali Species/BodyParts/AvaliBreastsFlat/AvaliBreastsFlat.tscn"
	return "res://Modules/Avali Species/BodyParts/AvaliBreastsScaleable/AvaliBreastsScaleable.tscn"

func generateDataFor(_dynamicCharacter):
	size = RNG.pick([
		BreastsSize.A, BreastsSize.B, BreastsSize.C, BreastsSize.D, BreastsSize.DD, BreastsSize.DDD,
	])

#Game logic is funky and requires a bit of a hack to get the breasts spawning on the correct genders
func npcGenerationWeight(_dynamicCharacter):
	if(_dynamicCharacter.getGender() in [Gender.Male]):
		return 0.0
	return 1000.0
