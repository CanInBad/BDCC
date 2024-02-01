extends BodypartEars

func _init():
	visibleName = "fin ears"
	id = "sharkears"

func getCompatibleSpecies():
	return ["shark"]

func getDoll3DScene():
	return "res://Modules/SharkSpecies/Bodyparts/Shark Ears/SharkEars.tscn"

func getCharacterCreatorDesc():
	return "Does this even make sense? No it does not, but it's here regardless, and NPC's will generate with and without them"
