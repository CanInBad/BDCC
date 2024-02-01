extends BodypartBody

func _init():
	visibleName = "Lucario body"
	id = "lucariobody"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioBody/LucarioBody.tscn"
