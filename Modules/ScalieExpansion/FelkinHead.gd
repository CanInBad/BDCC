extends BodypartHead

func _init():
	visibleName = "felkin head"
	id = "felkinhead"

func getCompatibleSpecies():
	return ["felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/FelkinHead/FelkinHead.tscn"

func getHeadLength():
	return 0.55
