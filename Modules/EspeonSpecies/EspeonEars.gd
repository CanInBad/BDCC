extends BodypartEars

func _init():
	visibleName = "espeon ears"
	id = "espeonears"

func getCompatibleSpecies():
	return ["Espeon"]

func getDoll3DScene():
	return "res://Modules/EspeonSpecies/Bodyparts/EspeonEars/EspeonEars.tscn"
