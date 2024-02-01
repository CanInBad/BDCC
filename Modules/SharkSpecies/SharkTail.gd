extends BodypartTail

func _init():
	visibleName = "shark tail"
	id = "sharktail"

func getCompatibleSpecies():
	return ["shark"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["scaly", "finned"])

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/SharkTail/SharkTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "so thick it breaks some skins"
