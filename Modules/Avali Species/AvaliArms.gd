extends BodypartArms

func _init():
	visibleName = "avali arms"
	id = "avaliarms"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliArms/AvaliArms.tscn"
