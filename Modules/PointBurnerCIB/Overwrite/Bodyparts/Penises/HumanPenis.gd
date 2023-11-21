extends BodypartPenis

func _init():
	visibleName = "human penis"
	id = "humanpenis"
	pickedRColor = null
	pickedGColor = null
	pickedBColor = null
	fluidProduction = CumProductionNew.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/HumanPenis/HumanPenis.tscn"

func generateRandomColors(_dynamicCharacter):
	pass
