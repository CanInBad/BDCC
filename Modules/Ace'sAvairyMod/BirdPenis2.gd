extends BodypartPenis

func _init():
	visibleName = "bird penis"
	id = "birdpenis"
	pickedGColor = Color.red
	pickedBColor = Color.darkred

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["smooth", "tapered"])

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdDick2/BirdPenis2.tscn"

func npcGenerationWeight(_dynamicCharacter):
	return 0.7
