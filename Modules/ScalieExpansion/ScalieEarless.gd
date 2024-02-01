extends BodypartEars

func _init():
	visibleName = "Nothing"
	id = "scalieearless"

#add as go along
func getCompatibleSpecies():
	return ["snake"]

func getDoll3DScene():
	return null

func getCharacterCreatorDesc():
	return "(Scalie Expansion)"

#func npcGenerationWeight(_dynamicCharacter):
#	return 3.0
