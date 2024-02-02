extends BodypartHorns

func _init():
	visibleName = "Back Hook"
	id = "backhookhorns"

func getCompatibleSpecies():
	return [Species.Dragon, "felkin", "wickerbeast", "easterndragon"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/HornsBackHook/HornsBackHook.tscn"

func getCharacterCreatorDesc():
	return "(ScalieExpansion)"
