extends BodypartTail

func _init():
	visibleName = "Scalie tail 2"
	id = "snaketail2"

func getCompatibleSpecies():
	return ["snake", "kobold"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["scaly", "dragon"])

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/SnakeTail2/SnakeTail2.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
