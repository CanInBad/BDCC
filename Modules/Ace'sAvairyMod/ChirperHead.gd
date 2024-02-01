extends BodypartHead

func _init():
	visibleName = "Chirper head"
	id = "birdhead1"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/ChirperHead/ChirperHead.tscn"

func getHeadLength():
	return 0.6
