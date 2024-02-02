extends BodypartHorns

func _init():
	visibleName = "Backwards Spiral"
	id = "backspiralhorns"

func getCompatibleSpecies():
	return [Species.Dragon, "felkin", "wickerbeast", "easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/HornsBackSpiral/HornsBackSpiral.tscn"

func getCharacterCreatorDesc():
	return "(ScalieExpansion)"
