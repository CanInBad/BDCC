extends BodypartHead

func _init():
	visibleName = "Eastern D. Sharp"
	id = "easternsharp"

func getCompatibleSpecies():
	return ["easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternSharp/EasternSharp.tscn"

func getHeadLength():
	return 0.55
