extends BodypartHead

func _init():
	visibleName = "Jackass head"
	id = "acehead"

func getCompatibleSpecies():
	return ["bird", "avian", "hippgriff", "gryphon"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/JackassHead/JackassHead.tscn"

func getHeadLength():
	return 0.6

func getCharacterCreatorDesc():
	return RNG.pick(["The false visage your favorite neurotic mod author in game",
		"I knew this guy who photoshopped an ahegao face on a penguin, and he didnt even use the beak, it became a snowman nose, and that detail pissed me off more than the ahegao face",
		"Accurate bird dick is mid as fuck imo, but I added it anyway, enjoy",
		"you should play my other mods too",
		"remember to breed/get bred by a cute twink"])

func npcGenerationWeight(_dynamicCharacter):
	return 0.0
