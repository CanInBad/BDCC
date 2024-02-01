extends BodypartEars

func _init():
	visibleName = "No Ears"
	id = "noears"

func getCompatibleSpecies():
	return ["bird"]

func getDoll3DScene():
	return null
