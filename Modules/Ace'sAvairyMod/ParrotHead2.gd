extends BodypartHead

func _init():
	visibleName = "parrot head"
	id = "parrothead2"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/ParrotHead/ParrotHead2.tscn"

func getHeadLength():
	return 0.6
