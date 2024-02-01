extends BodypartHead

func _init():
	visibleName = "sergal head"
	id = "sergalhead"

func getCompatibleSpecies():
	return ["felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/Sergal Head/SergalHead.tscn"

func getHeadLength():
	return 0.55
