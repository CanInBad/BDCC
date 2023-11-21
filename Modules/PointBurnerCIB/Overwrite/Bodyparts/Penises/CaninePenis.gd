extends BodypartPenis

func _init():
	visibleName = "hyperable knotted penis"
	id = "caninepenishyperable"
	pickedGColor = Color.red
	pickedBColor = Color.darkred
	var newCumProClass = load("res://Modules/PointBurnerCIB/Overwrite/CumProductionModi.gd")
	fluidProduction = newCumProClass.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["knotted", "canine-shaped", "canine"])

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/CaninePenis/CaninePenis.tscn"

func getTraits():
	return {
		PartTrait.PenisKnot: true,
		"PartTrait.Hyperable": true,
	}
