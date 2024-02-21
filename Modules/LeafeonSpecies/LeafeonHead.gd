extends BodypartHead

func _init():
	visibleName = "Leafeon Head"
	id = "leafeonhead"

func getCompatibleSpecies():
	return ["Leafeon"]

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonHead/LeafeonHead.tscn"
