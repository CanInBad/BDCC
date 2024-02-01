extends BodypartLeg

func _init():
	visibleName = "synth legs cus."
	id = "synthlegsskin"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthPaws_skin/SynthPaws_skin.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}

func getCharacterCreatorDesc():
	return "Synth Legs that allow for any custom skin"
