extends BodypartHead

func _init():
	visibleName = "falcon head"
	id = "hawkhead2"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/HawkHead/BirdHead3.tscn"

func getHeadLength():
	return 0.6
