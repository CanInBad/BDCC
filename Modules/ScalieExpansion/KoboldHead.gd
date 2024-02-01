extends BodypartHead

func _init():
	visibleName = "Kobold head"
	id = "koboldhead"

func getCompatibleSpecies():
	return ["kobold"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/KoboldHead/KoboldHead.tscn"

func getHeadLength():
	return 0.55
