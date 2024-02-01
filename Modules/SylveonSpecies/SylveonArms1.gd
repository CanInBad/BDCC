extends BodypartArms

func _init():
	visibleName = "Alt Sylve Arms"
	id = "sylveonarms1"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveArms2/SylveArms2.tscn"
