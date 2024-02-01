extends BodypartBody

func _init():
	visibleName = "shark body"
	id = "sharkbody"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/SharkBody/SharkBody.tscn"
