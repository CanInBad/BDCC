extends BodypartTail

func _init():
	visibleName = "Sylveon tail"
	id = "sylveontail"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveTail1/SylveonTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
