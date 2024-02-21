extends BodypartTail

func _init():
	visibleName = "espeon tail"
	id = "espeontail"

func getCompatibleSpecies():
	return ["Espeon"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["espeon", "slender"])

func getDoll3DScene():
	return "res://Modules/EspeonSpecies/Bodyparts/EspeonTail/EspeonTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
