extends BodypartHead

func _init():
	visibleName = "Avali head"
	id = "avalihead"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliHead/AvaliHead.tscn"
