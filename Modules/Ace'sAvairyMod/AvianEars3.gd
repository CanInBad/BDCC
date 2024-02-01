extends BodypartEars

func _init():
	visibleName = "Avian ears 3"
	id = "avianears3"

func getCompatibleSpecies():
	return ["avian", "gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/AvianEars3/AvianEars3.tscn"
