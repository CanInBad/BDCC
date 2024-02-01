extends BodypartTail

func _init():
	visibleName = "Slim Avali tail"
	id = "avalilongtail2"

func getCompatibleSpecies():
	return ["avali"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["feathery"])

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliLongTail2/AvaliLongTail2.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
