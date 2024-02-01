extends BodypartEars

func _init():
	visibleName = "Avian ears"
	id = "avianears2"

func getCompatibleSpecies():
	return ["avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/AvianEars1/AvianEars.tscn"
