extends BodypartPenis

func _init():
	visibleName = "Synth penis"
	id = "synthpenis"
	pickedGColor = Color.cyan
	pickedBColor = Color.gray

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["knotted", "ribbed", "synthetic"])

func getDoll3DScene():
	return "res://Modules/SynthSpecies/Bodyparts/SynthPenis/SynthPenis.tscn"

func getTraits():
	return {
		PartTrait.PenisKnot: true,
		PartTrait.PenisRidges: true,
	}

func getCharacterCreatorDesc():
	return "The latest and greatest of synth penis. Standard issue."
