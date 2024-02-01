extends BodypartEars

func _init():
	visibleName = "Proto dual ears"
	id = "ProtoDualEars"

func getCompatibleSpecies():
	return ["protogen"]

func getDoll3DScene():
	return "res://Modules/ProtogenSpecies/Bodyparts/ProtoDualEars/ProtoDualEars.tscn"
