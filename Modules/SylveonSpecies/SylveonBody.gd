extends BodypartBody

func _init():
	visibleName = "Sylveon body"
	id = "Sylvebody"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveBody/SylveonBody.tscn"
