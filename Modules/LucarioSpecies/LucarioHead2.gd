extends BodypartHead

func _init():
	visibleName = "lucario head"
	id = "Lucariohead2"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioHead_Extra/LucarioHead_Extra.tscn"

func getHeadLength():
	return 0.6

func getCharacterCreatorDesc():
	return "The Standard Version of the Lucario Head"
