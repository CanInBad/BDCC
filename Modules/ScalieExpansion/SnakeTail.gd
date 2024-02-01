extends BodypartTail

func _init():
	visibleName = "Scalie tail"
	id = "snaketail"

func getCompatibleSpecies():
	return ["snake", "kobold"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["scaly", "dragon"])

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/SnakeTail/SnakeTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
