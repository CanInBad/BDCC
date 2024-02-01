extends BodypartArms

func _init():
	visibleName = "synth arms"
	id = "syntharms"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthArms/SynthArms.tscn"

func getCharacterCreatorDesc():
	return "The stock model of synth arms"
