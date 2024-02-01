extends BodypartArms

func _init():
	visibleName = "Synth buff arms"
	id = "synthbuffarms"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthBuffArms/SynthBuffArms.tscn"

func getCharacterCreatorDesc():
	return "For heavy lifting and looking sexy"
