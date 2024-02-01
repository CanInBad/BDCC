extends BodypartHead

func _init():
	visibleName = "Sylveon Head (eyes)"
	id = "sylveonhead"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveHead/SylveonHead_Eye.tscn"

func getHeadLength():
	return 0.25
