extends BodypartHead

func _init():
	visibleName = "Hawk head"
	id = "hawkhead"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/HawkHead/BirdHead2.tscn"

func getHeadLength():
	return 0.6
