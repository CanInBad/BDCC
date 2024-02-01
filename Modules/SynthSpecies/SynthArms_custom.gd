extends BodypartArms

func _init():
	visibleName = "cus. synth arms"
	id = "syntharms_skin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthArms_custom/SynthArms_custom.tscn"

func getCharacterCreatorDesc():
	return "allows for custom skins"
