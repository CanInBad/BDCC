extends BodypartLeg

func _init():
	visibleName = "synth legs V2"
	id = "synthlegs2"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthLegs/SynthLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}

func getCharacterCreatorDesc():
	return "alt version of the synth legs"
