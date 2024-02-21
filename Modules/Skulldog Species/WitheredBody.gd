extends BodypartBody

func _init():
	visibleName = "Withered body"
	id = "Witheredbody"

func getCompatibleSpecies():
	return ["skulldog"]

func getDoll3DScene():
	return "res://Modules/Skulldog Species/BodyParts/WitheredBody/WitheredBody.tscn"

func getCharacterCreatorDesc():
	return "A body fitting your un-natural appearance..."
