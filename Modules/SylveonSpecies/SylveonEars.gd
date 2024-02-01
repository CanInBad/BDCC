extends BodypartEars

func _init():
	visibleName = "sylveon ears"
	id = "sylveonears"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveEars/SylveonEars.tscn"
