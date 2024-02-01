extends BodypartPenis

func _init():
	visibleName = "Synth Human Penis"
	id = "synthpenishuman"
	pickedGColor = Color.gray
	pickedBColor = RNG.pick([Color.blue, Color.cyan, Color.red])

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["ridged", "synthetic"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthPenisHuman/SynthPenisHuman.tscn"

func getCharacterCreatorDesc():
	return "the oldest model of Synth penis. Sheath and human dick combined into one."
