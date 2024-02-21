extends BodypartHead

func _init():
	visibleName = "espeon head WE"
	id = "espeonheadWE"

func getCompatibleSpecies():
	return ["Espeon"]

func getDoll3DScene():
	return "res://Modules/EspeonSpecies/Bodyparts/EspeonHeadWE/EspeonHeadWE.tscn"

func getCharacterCreatorDesc():
	 return "Version of the Espeon head without eyes, allows for custom skins"
	
	#might make the eyes skinable to see how it looks
	#need to learn more about skins in general before going around fucking with shit
