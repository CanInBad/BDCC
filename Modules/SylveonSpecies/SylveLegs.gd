extends BodypartLeg

func _init():
	visibleName = "Sylveon Legs Custom"
	id = "Sylvelegs"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveLegs/SylveLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
