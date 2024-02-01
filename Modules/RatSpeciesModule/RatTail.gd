extends BodypartTail

func _init():
	visibleName = "rat tail"
	id = "rattail"

func getCompatibleSpecies():
	return ["rat"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["rat", "thin", "smooth"])

func getCharacterCreatorDesc():
	return "Rat head with default pattern"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatTail/RatTail.tscn"
