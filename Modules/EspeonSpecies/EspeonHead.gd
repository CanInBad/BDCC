extends BodypartHead

func _init():
	visibleName = "espeon head"
	id = "espeonhead"

func getCompatibleSpecies():
	return ["Espeon"]

func getDoll3DScene():
	return "res://Modules/EspeonSpecies/Bodyparts/EspeonHead/EspeonHead.tscn"

	#might make the eyes skinable to see how it looks
	#need to learn more about skins in general before going around fucking with shit
