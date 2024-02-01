extends BodypartTail

func _init():
	visibleName = "armored tail"
	id = "synthtailarmored"

func getCompatibleSpecies():
	return ["synth"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["scaly", "dragon"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailArmored/SynthTailArmored.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
