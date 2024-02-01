extends BodypartLeg

func _init():
	visibleName = "Avali legs"
	id = "avalilegs"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliLegs/AvaliLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
