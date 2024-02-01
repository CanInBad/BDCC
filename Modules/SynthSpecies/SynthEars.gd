extends BodypartEars

func _init():
	visibleName = "Synth ears"
	id = "Synthears"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthEars/SynthEars.tscn"

func getCharacterCreatorDesc():
	return "Standard issue synth ears"
