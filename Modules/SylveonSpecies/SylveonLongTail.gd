extends BodypartTail

func _init():
	visibleName = "Sylveon Ribbon Tail"
	id = "sylveontail2"

func getCompatibleSpecies():
	return ["sylveon"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["furry", "sylveon"])

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveTail2/SylveonLongTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
