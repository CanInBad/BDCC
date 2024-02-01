extends BodypartArms

func _init():
	visibleName = "Synth buff cus."
	id = "synthbuffarms_skin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthBuffArms_custom/SynthBuffArms_Custom.tscn"

func getCharacterCreatorDesc():
	return "Allows for custom skins on buff synth arms"
