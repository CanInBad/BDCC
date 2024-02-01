extends BodypartLeg

func _init():
	visibleName = "Lucario legs custom"
	id = "lucariolegscustom"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioLegs_custom/LucarioLegs_custom.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
