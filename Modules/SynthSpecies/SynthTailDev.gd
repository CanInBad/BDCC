extends BodypartTail

func _init():
	visibleName = "dev synth tail"
	id = "synthdevtail"

func getCompatibleSpecies():
	return ["synth"]
	
func npcGenerationWeight(_dynamicCharacter):
	return 0.0

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["synth", "plated"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthTailDev/SynthTailDev.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "A leftover from development made into a new part, NPCs dont spawn with this"
