extends BodypartLeg

func _init():
	visibleName = "synth legs V2"
	id = "synthlegs2skin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthLegs_skin/SynthLegs_skin.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}

func getCharacterCreatorDesc():
	return "alt version of the synth legs that allow for any skin"
