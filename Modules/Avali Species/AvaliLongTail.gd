extends BodypartTail

func _init():
	visibleName = "Long Avali tail"
	id = "avalilongtail"

func getCompatibleSpecies():
	return ["avali"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["feathery"])

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliLongTail/AvaliLongTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
