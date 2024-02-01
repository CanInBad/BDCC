extends BodypartEars

func _init():
	visibleName = "rat ears custom"
	id = "ratearscustom"

func getCompatibleSpecies():
	return ["rat"]

func getCharacterCreatorDesc():
	return "Rat ears with patterns affecting it"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatEars (custom)/RatEars.tscn"
