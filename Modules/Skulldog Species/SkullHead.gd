extends BodypartHead

func _init():
	visibleName = "SkullHead"
	id = "skullhead"

func getCompatibleSpecies():
	return ["skulldog"]

func getDoll3DScene():
	return "res://Modules/Skulldog Species/BodyParts/SkullTestHead/SkullHead.tscn"

