extends BodypartHead

func _init():
	visibleName = "Leafeon Head WE"
	id = "LeafeonheadWE"

func getCompatibleSpecies():
	return ["Leafeon"]

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonHeadWE/LeafeonHeadWE.tscn"

func getCharacterCreatorDesc():
	return "Eyeless version of the regular Leafeon Head, allows for custom skins"
