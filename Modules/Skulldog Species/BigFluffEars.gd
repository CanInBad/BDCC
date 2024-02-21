extends BodypartEars

func _init():
	visibleName = "Fluffy ears (Pierced)"
	id = "fluffearsAlt"

func getCompatibleSpecies():
	return ["skulldog", Species.Canine, Species.Feline]

func getDoll3DScene():
	return "res://Modules/Skulldog Species/BodyParts/BigFluffEars - Pierced/BigFluffEarsPierced.tscn"
