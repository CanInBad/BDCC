extends BodypartTail

func _init():
	visibleName = "Simple Avali tail"
	id = "avalilongtail3"

func getCompatibleSpecies():
	return ["avali"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["feathery"])

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliLongTail3/AvaliLongTail3.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "an old tail design re-added, enjoy"
