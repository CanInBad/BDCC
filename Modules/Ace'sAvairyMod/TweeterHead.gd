extends BodypartHead

func _init():
	visibleName = "tweeter head"
	id = "tweeterhead"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/TweeterHead/TweeterHead.tscn"

func getHeadLength():
	return 0.7
