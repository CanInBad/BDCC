extends BodypartLeg

func _init():
	visibleName = "Avali legs (Custom)"
	id = "avalilegs2"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliLegsCustom/AvaliLegsCustom.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}

func getCharacterCreatorDesc():
	return "Version of the Avali arms that have access to custom skins."
