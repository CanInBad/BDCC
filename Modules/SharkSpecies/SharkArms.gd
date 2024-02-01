extends BodypartArms

func _init():
	visibleName = "shark arms"
	id = "sharkarms"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/Shark Arms/SharkArms.tscn"
