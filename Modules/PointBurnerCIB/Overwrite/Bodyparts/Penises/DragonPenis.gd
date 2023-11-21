extends BodypartPenis

func _init():
	visibleName = "hyperable dragon penis"
	id = "dragonpenismhyper"
	pickedGColor = Color.red
	pickedBColor = Color.darkred
	var newCumProClass = load("res://Modules/PointBurnerCIB/Overwrite/CumProductionModi.gd")
	fluidProduction = newCumProClass.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["knotted", "ribbed", "dragon"])

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/DragonPenis/DragonPenis.tscn"

func getTraits():
	return {
		PartTrait.PenisKnot: true,
		PartTrait.PenisRidges: true,
		"PartTrait.Hyperable": true,
	}
