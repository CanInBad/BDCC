extends BodypartTail

func _init():
	visibleName = "Lucario tail"
	id = "lucariotail"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/Lucario Tail/LucarioTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "Matches with the lucario legs"
