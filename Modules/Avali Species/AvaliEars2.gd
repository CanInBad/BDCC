extends BodypartEars

func _init():
	visibleName = "Avali ears (alt)"
	id = "avaliears2"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliEars2/AvaliEars2.tscn"
