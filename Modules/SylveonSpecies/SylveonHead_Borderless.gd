extends BodypartHead

func _init():
	visibleName = "Sylveon head"
	id = "sylveonhead3"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveHeadBorderless/SylveonHead_Borderless.tscn"

func getHeadLength():
	return 0.25

func getCharacterCreatorDesc():
	return ""
