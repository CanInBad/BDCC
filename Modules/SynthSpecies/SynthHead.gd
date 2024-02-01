extends BodypartHead

func _init():
	visibleName = "SynthHead"
	id = "synthhead"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthHead/SynthHead.tscn"

func getCharacterCreatorDesc():
	return "Standard version of the Synth head"
