extends BodypartTail

func _init():
	visibleName = "Avali tail 2"
	id = "avalitail2"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliShortTail2/AvaliTail2.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
