extends BodypartArms

func _init():
	visibleName = "simple syn. arms"
	id = "syntharms_skin2"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthArms_custom2/SynthArms_custom2.tscn"

func getCharacterCreatorDesc():
	return "Simple synth arms perfect for imitating natural fur/scale colors"
