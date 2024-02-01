extends BodypartHead

func _init():
	visibleName = "rat head"
	id = "rathead"

func getCompatibleSpecies():
	return ["rat"]

func getCharacterCreatorDesc():
	return "Rat head with the default pattern"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatHead/RatHead.tscn"
