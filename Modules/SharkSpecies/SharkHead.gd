extends BodypartHead

func _init():
	visibleName = "shark head"
	id = "sharkhead"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/SharkHead/SharkHead.tscn"

func getHeadLength():
	return 0.7
