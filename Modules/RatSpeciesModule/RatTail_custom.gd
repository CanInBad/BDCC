extends BodypartTail

func _init():
	visibleName = "rat tail custom"
	id = "rattailcustom"

func getCompatibleSpecies():
	return ["rat"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["rat", "thin", "smooth"])

func getCharacterCreatorDesc():
	return "Rat head with patterns affecting it"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatTail (custom)/RatTail.tscn"
