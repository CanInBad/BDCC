extends BodypartTail

func _init():
	visibleName = "spiked tail Cus."
	id = "synthtailspiked_skin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailSpiked_skin/SynthTailSpiked_skin.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "allows for custom skins"
