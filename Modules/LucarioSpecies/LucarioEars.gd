extends BodypartEars

func _init():
	visibleName = "lucario ears"
	id = "lucarioears"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioEars/LucarioEars.tscn"
