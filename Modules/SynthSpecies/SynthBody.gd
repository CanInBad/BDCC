extends BodypartBody

func _init():
	visibleName = "synth body"
	id = "synthbody"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthBody/SynthBody.tscn"

func getCharacterCreatorDesc():
	return "Advanced robotics allows for the most realistic form of synthetic life. Capable of almost being people."
