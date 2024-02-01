extends BodypartHead

func _init():
	visibleName = "Eastern D. Round"
	id = "easternround"

func getCompatibleSpecies():
	return ["easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternRound/EasternRound.tscn"

func getHeadLength():
	return 0.55
