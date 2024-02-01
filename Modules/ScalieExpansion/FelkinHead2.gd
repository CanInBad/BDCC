extends BodypartHead

func _init():
	visibleName = "felkin head 2"
	id = "felkinhead2"

func getCompatibleSpecies():
	return ["felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/FelkinHead2/FelkinHead2.tscn"

func getHeadLength():
	return 0.55
