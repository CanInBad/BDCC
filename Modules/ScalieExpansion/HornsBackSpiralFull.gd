extends BodypartHorns

func _init():
	visibleName = "Backwards Spiral Full"
	id = "backspiralfull"

func getCompatibleSpecies():
	return [Species.Dragon, "felkin", "wickerbeast", "easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/HornsBackSpiralFull/HornsBackSpiralFull.tscn"

func getCharacterCreatorDesc():
	return "(ScalieExpansion)"
