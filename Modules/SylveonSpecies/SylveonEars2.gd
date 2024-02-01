extends BodypartEars

func _init():
	visibleName = "sylveon ears (ribbon)"
	id = "sylveonears2"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveEars2/SylveonEars2.tscn"
