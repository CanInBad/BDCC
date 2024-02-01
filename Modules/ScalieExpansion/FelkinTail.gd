extends BodypartTail

func _init():
	visibleName = "Felkin tail"
	id = "felkintail"

func getCompatibleSpecies():
	return ["felkin"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["furry", "leonine"])

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/Felkin Tail/FelkinTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
