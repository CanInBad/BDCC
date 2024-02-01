extends BodypartEars

func _init():
	visibleName = "Eastern ears (Flat)"
	id = "easternears2"

func getCompatibleSpecies():
	return ["easterndragon", "felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternEarsFlat/EasternEarsFlat.tscn"
