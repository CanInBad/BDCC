extends BodypartEars

func _init():
	visibleName = "Fluffy ears"
	id = "fluffears"

func getCompatibleSpecies():
	return ["skulldog", Species.Canine, Species.Feline]

func getDoll3DScene():
	return "res://Modules/Skulldog Species/BodyParts/BigFluffEars/BigFluffEars.tscn"
