extends BodypartEars

func _init():
	visibleName = "Leafeon Ears"
	id = "leafeonears"

func getCompatibleSpecies():
	return ["Leafeon"]

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonEars/LeafeonEars.tscn"
