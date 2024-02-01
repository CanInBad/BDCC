extends BodypartLeg

func _init():
	visibleName = "Lucario legs"
	id = "lucariolegs"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioLegs/LucarioLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
