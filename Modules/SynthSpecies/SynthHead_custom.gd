extends BodypartHead

func _init():
	visibleName = "SynthHead Cus."
	id = "synthhead_skin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthHead_custom/SynthHead_custom.tscn"

func getCharacterCreatorDesc():
	return "Allows for custom skins"
