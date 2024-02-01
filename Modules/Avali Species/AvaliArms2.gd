extends BodypartArms

func _init():
	visibleName = "avali arms (custom)"
	id = "avaliarms2"

func getCompatibleSpecies():
	return ["avali"]

func getDoll3DScene():
	return "res://Modules/Avali Species/BodyParts/AvaliArmsCustom/AvaliArmsCustom.tscn"

func getCharacterCreatorDesc():
	return "Version of the Avali arms that have access to custom skins. May not work 100% right. No refunds."
