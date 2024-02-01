extends BodypartTail

func _init():
	visibleName = "armored tail Cus."
	id = "synthtailarmored_skin"

func getCompatibleSpecies():
	return ["synth"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["plated", "synthetic", "armored"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailArmored_skin/SynthTailArmored_skin.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "Allows for custom skins on the armored tail"
