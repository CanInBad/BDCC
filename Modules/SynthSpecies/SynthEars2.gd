extends BodypartEars

func _init():
	visibleName = "Synth ears V2"
	id = "Synthears2"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthEars2/SynthEars2.tscn"

func getCharacterCreatorDesc():
	return "An upgraded model of stock Synth ears, and still basic enough it wont be removed from you during prison intake"
