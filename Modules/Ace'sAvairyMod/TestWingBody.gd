extends BodypartBody

func _init():
	visibleName = "winged body"
	id = "wingbody"

func getCompatibleSpecies():
#	return ["bird", "avian", "hippogriff", "gryphon"]
	return [Species.Any]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/Wing Test/wingBodytest.tscn"
	
func getCharacterCreatorDesc():
	return "A player-only bodypart, fair warning that this breaks *some* skins and clips through clothing. hope you like being topless."

func npcGenerationWeight(_dynamicCharacter):
	return 0.0
