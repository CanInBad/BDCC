extends BodypartEars

func _init():
	visibleName = "Eastern D. ears"
	id = "easternears"

func getCompatibleSpecies():
	return ["easterndragon", "felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/EasternEars/EasternEars.tscn"
