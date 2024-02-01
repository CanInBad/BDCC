extends BodypartArms

func _init():
	visibleName = "lucario arms custom"
	id = "lucarioarmscustom"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioArms_custom/LucarioArms_custom.tscn"
