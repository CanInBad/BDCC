extends BodypartTail

func _init():
	visibleName = "Lucario tail custom"
	id = "lucariotail2"

func getCompatibleSpecies():
	return ["lucario"]

func getDoll3DScene():
	return "res://Modules/LucarioSpecies/Bodyparts/Lucario Tail Alt/LucarioTailCustom.tscn"

func getTraits():
	return {
		PartTrait.TailFlexible: true,
	}

func getCharacterCreatorDesc():
	return "Allows for custom skins"


func npcGenerationWeight(_dynamicCharacter):
	return 0.5
