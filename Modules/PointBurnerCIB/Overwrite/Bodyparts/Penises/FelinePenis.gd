extends BodypartPenis

func _init():
	visibleName = "hyperable barbed penis"
	id = "felinepenishyperable"
	pickedGColor = Color.red
	pickedBColor = Color.darkred
	var newCumProClass = load("res://Modules/PointBurnerCIB/Overwrite/CumProductionModi.gd")
	fluidProduction = newCumProClass.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["barbed", "feline-shaped", "feline"])

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/FelinePenis/FelinePenis.tscn"

func getTraits():
	return {
		PartTrait.PenisBarbs: true,
		"PartTrait.Hyperable": true,
	}
