extends BodypartEars

func _init():
	visibleName = "sylveon ears (bow)"
	id = "sylveonears1"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveEars1/SylveonEars1.tscn"
