extends BodypartHead

func _init():
	visibleName = "shark head (finless)"
	id = "sharkhead2"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/SharkHead/SharkHead_finless.tscn"

func getHeadLength():
	return 0.7

func getCharacterCreatorDesc():
	return "s m o o t h, the sequel"
