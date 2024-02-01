extends BodypartHead

func _init():
	visibleName = "felkin head 3"
	id = "felkinhead3"

func getCompatibleSpecies():
	return ["felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/FelkinHead3/FelkinHead3.tscn"

func getHeadLength():
	return 0.55
