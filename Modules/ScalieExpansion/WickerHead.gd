extends BodypartHead

func _init():
	visibleName = "wicker head"
	id = "wickerhead"

func getCompatibleSpecies():
	return ["wickerbeast"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/WickerHead/WickerHead.tscn"

func getHeadLength():
	return 0.7
