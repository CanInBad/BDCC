extends BodypartTail

func _init():
	visibleName = "Bird tail 2"
	id = "birdtail2"

func getCompatibleSpecies():
	return ["bird", "avian"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdTail2/BirdTail2.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
