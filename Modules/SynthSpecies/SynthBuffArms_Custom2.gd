extends BodypartArms

func _init():
	visibleName = "Simple Syn. buff"
	id = "synthbuffarms_skin2"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthBuffArms_custom2/SynthBuffArms_Custom2.tscn"

func getCharacterCreatorDesc():
	return "A streamlined version of the buff synth arms. Perfect for showing off"
