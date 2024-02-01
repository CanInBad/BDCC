extends BodypartTail

func _init():
	visibleName = "Gryphon fluffy tail"
	id = "gryphontail2"

func getCompatibleSpecies():
	return ["gryphon", "hippogriff"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["fluffy", "gryphon"])

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/GryphonTail2/GryphonTail2.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
