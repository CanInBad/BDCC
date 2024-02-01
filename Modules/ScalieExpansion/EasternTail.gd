extends BodypartTail

func _init():
	visibleName = "Eastern tail"
	id = "easterntail"

func getCompatibleSpecies():
	return ["easterndragon"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["furry", "leonine"])

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternTail/EasternTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
