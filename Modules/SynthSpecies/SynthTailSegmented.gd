extends BodypartTail

func _init():
	visibleName = "Synth tail"
	id = "synthtail"

func getCompatibleSpecies():
	return ["synth"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["scaly", "dragon"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailSegments/SynthTail_segment.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
