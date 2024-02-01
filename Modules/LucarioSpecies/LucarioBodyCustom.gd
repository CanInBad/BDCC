extends BodypartBody

func _init():
	visibleName = "Lucario body custom"
	id = "lucariobodycustom"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioBody_custom/LucarioBody_custom.tscn"
