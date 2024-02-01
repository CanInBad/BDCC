extends BodypartEars

func _init():
	visibleName = "Earless"
	id = "sharkearless"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return null

func getCharacterCreatorDesc():
	return "s m o o t h"
