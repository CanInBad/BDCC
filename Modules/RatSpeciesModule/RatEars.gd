extends BodypartEars

func _init():
	visibleName = "rat ears"
	id = "ratears"

func getCompatibleSpecies():
	return ["rat"]

func getCharacterCreatorDesc():
	return "Rat ears with default pattern"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatEars/RatEars.tscn"
