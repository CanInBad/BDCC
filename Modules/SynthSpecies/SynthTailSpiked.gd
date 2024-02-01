extends BodypartTail

func _init():
	visibleName = "spiked synth tail"
	id = "synthtailspiked"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailSpiked/SynthTailSpiked.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}
