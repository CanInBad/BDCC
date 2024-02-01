extends BodypartHead

func _init():
	visibleName = "lucario head (alt)"
	id = "Lucariohead"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/LucarioHead/LucarioHead.tscn"

func getHeadLength():
	return 0.6

func getCharacterCreatorDesc():
	return "A seperate version of the lucario head, missing the dreadlock-type things, works better animations and such"
