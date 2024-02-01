extends BodypartHead

func _init():
	visibleName = "Sylveon head Custom"
	id = "sylveonhead2"

func getCompatibleSpecies():
	return ["sylveon"]

func getDoll3DScene():
	return "res://Modules/SylveonSpecies/Bodyparts/SylveHeadWE/SylveonHead.tscn"

func getHeadLength():
	return 0.25

func getCharacterCreatorDesc():
	return "without eyes and has access to custom skins"
