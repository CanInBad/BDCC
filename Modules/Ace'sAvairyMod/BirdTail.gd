extends BodypartTail

func _init():
	visibleName = "Bird tail"
	id = "birdtail"

func getCompatibleSpecies():
	return ["bird", "avian"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdTail/BirdTail.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
