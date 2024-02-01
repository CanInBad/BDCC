extends BodypartTail

func _init():
	visibleName = "Avali tail"
	id = "avalitail"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliShortTail/AvaliShortTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
