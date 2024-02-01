extends BodypartTail

func _init():
	visibleName = "Synth tail cus."
	id = "synthtail_skin"

func getCompatibleSpecies():
	return ["synth"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["robotic", "synthetic"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailSegments_skin/SynthTail_segment_skin.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
