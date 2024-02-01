extends BodypartHorns

func _init():
	visibleName = "Backwards Spiral"
	id = "backspiralhorns"

func getCompatibleSpecies():
	return [Species.Any]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/HornsBackSpiral/HornsBackSpiral.tscn"

func getCharacterCreatorDesc():
	return "(ScalieExpansion)"
