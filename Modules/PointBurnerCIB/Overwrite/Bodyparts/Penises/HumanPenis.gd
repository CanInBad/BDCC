extends BodypartPenis

func _init():
	visibleName = "hyperable human penis"
	id = "humanpenishyperable"
	pickedRColor = null
	pickedGColor = null
	pickedBColor = null
	var newCumProClass = load("res://Modules/PointBurnerCIB/Overwrite/CumProductionModi.gd")
	fluidProduction = newCumProClass.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/HumanPenis/HumanPenis.tscn"

func generateRandomColors(_dynamicCharacter):
	pass

func getTraits():
	return {
		"PartTrait.Hyperable": true,
	}