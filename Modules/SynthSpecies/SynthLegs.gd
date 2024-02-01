extends BodypartLeg

func _init():
	visibleName = "synth legs"
	id = "synthlegs"

func getCompatibleSpecies():
	return ["synth"]

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthPaws/SynthPaws.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
