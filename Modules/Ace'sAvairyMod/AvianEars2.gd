extends BodypartEars

func _init():
	visibleName = "Avian ears 2"
	id = "avianears"

func getCompatibleSpecies():
	return ["avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/AvianEars2/AvianEars2.tscn"
