extends BodypartArms

func _init():
	visibleName = "lucario arms"
	id = "lucarioarms"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioArms/LucarioArms.tscn"
