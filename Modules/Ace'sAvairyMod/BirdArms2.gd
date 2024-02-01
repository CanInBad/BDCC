extends BodypartArms

func _init():
	visibleName = "winged arms"
	id = "birdarms2"

func getCompatibleSpecies():
	return ["bird", "avian"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdArms_Winged/BirdArms2.tscn"
