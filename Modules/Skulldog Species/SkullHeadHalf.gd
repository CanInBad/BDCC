extends BodypartHead

func _init():
	visibleName = "Skull Mask"
	id = "skullheadHalf"

func getCompatibleSpecies():
	return ["skulldog"]

func getDoll3DScene():
	return "res://Modules/Skulldog Species/BodyParts/SkullHeadHalf/SkullHeadHalf.tscn"

func getCharacterCreatorDesc():
	return "A more skull-mask like head type"
