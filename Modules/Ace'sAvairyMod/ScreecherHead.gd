extends BodypartHead

func _init():
	visibleName = "Screecher head"
	id = "seagullhead"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/ScreecherHead/ScreecherHead.tscn"

func getHeadLength():
	return 0.7
