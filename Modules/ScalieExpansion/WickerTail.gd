extends BodypartTail

func _init():
	visibleName = "Wicker tail"
	id = "wickertail"

func getCompatibleSpecies():
	return ["wickerbeast"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["furry", "Fluffy"])

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/WickerTail/WickerTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
