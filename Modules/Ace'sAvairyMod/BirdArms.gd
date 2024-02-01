extends BodypartArms

func _init():
	visibleName = "avian arms"
	id = "birdarms"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdArms/BirdArms.tscn"
