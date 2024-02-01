extends BodypartHead

func _init():
	visibleName = "rat head custom"
	id = "ratheadcustom"

func getCompatibleSpecies():
	return ["rat"]

func getCharacterCreatorDesc():
	return "Rat head with patterns affecting it"

func getDoll3DScene():
	return "res://Modules/RatSpeciesModule/Bodyparts/RatHead (custom)/RatHead.tscn"
