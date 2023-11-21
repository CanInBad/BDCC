extends BodypartPenis

func _init():
	visibleName = "hyperable dragon penis"
	id = "dragonpenismhyper"
	lengthCM = 22
	pickedGColor = Color.red
	pickedBColor = Color.darkred
	var newCumProClass = load("res://Modules/PointBurnerCIB/Misc/CumProductionModi.gd")
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

func getPickableAttributes():
	var result = .getPickableAttributes()
	result["cocksize"] = {
		"text": "Pick your cock's length",
		"textButton": "Length",
		"buttonDesc": "Pick the cock's length",
		"options": [
			[5*2, Util.cmToString(5*2), "Pick this length"],
			[8*2, Util.cmToString(8*2), "Pick this length"],
			[10*2, Util.cmToString(10*2), "Pick this length"],
			[13*2, Util.cmToString(13*2), "Pick this length"],
			[15*2, Util.cmToString(15*2), "Pick this length"],
			[18*2, Util.cmToString(18*2), "Pick this length"],
			[22*2, Util.cmToString(22*2), "Pick this length"],
			[25*2, Util.cmToString(25*2), "Pick this length"],
			[30*2, Util.cmToString(30*2), "Pick this length"],
			[40*2, Util.cmToString(40*2), "Pick this length"],
			[50*2, Util.cmToString(50*2), "Pick this length"],
		]
	}
	return result

func getAttributesText():
	var curAttribute = .getAttributesText()
	curAttribute.append(["Bluespace anomalies", "Yes"])
	return curAttribute