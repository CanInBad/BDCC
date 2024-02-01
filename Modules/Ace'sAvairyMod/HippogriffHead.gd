extends BodypartHead

func _init():
	visibleName = "hippogriff head"
	id = "hippogriffhead"

func getCompatibleSpecies():
	return ["hippogriff", "gryphon"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/HippogriffHead/HippogriffHead.tscn"

func getHeadLength():
	return 0.6
