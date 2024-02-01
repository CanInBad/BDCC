extends BodypartEars

func _init():
	visibleName = "Griff Ears"
	id = "griffears3"

func getCompatibleSpecies():
	return ["gryphon", "hippogriff"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/GriffEars/GriffEars.tscn"
