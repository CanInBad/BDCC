extends BodypartHorns

func _init():
	visibleName = "Back Hook Alt"
	id = "backhookhornsalt"

func getCompatibleSpecies():
	return [Species.Dragon, "felkin", "wickerbeast", "easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/HornsBackHookAlt/HornBackHook2.tscn"

func getCharacterCreatorDesc():
	return "(ScalieExpansion)"
