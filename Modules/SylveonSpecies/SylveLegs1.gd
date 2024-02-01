extends BodypartLeg

func _init():
	visibleName = "Sylveon Legs"
	id = "Sylvelegs1"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveLegs1/SylveLegs1.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
