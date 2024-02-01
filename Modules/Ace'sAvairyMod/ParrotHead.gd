extends BodypartHead

func _init():
	visibleName = "macaw head"
	id = "parrothead"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/MacawHead/ParrotHead.tscn"

func getHeadLength():
	return 0.6
