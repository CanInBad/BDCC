extends BodypartHead

func _init():
	visibleName = "Eastern D. Hybrid"
	id = "easternhybrid"

func getCompatibleSpecies():
	return ["easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternHybrid/EasternHybrid.tscn"

func getHeadLength():
	return 0.55
