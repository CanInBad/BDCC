extends BodypartArms

func _init():
	visibleName = "Sylveon arms"
	id = "sylveonarms"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveArms/SylveArms1.tscn"
