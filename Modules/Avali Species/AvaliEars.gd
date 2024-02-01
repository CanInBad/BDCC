extends BodypartEars

func _init():
	visibleName = "Avali ears"
	id = "avaliears"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliEars/AvaliEars.tscn"
