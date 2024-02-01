extends BodypartBody

func _init():
	visibleName = "cus. synth body"
	id = "synthbodyskin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthBody_skin/SynthBody_skin.tscn"

func getCharacterCreatorDesc():
	return "A synth body capable of custom skins"
