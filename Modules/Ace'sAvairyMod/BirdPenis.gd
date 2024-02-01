extends BodypartPenis

func _init():
	visibleName = "avian penis"
	id = "ACEavianpenis"
	pickedGColor = Color.red
	pickedBColor = Color.darkred

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["knotted", "avian"])

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdDick/BirdPenis.tscn"

func getTraits():
	return {
		PartTrait.PenisKnot: true,
	}
