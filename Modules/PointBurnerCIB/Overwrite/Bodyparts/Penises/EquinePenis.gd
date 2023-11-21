extends BodypartPenis

func _init():
	visibleName = "hyperable flared penis"
	id = "equinepenishyperable"
	lengthCM = 22
	pickedGColor = Color.red
	pickedBColor = Color.darkred
	var newCumProClass = load("res://Modules/PointBurnerCIB/Overwrite/CumProductionModi.gd")
	fluidProduction = newCumProClass.new()
	fluidProduction.bodypart = weakref(self)

func getCompatibleSpecies():
	return [Species.Any]

func getLewdAdjective():
	return RNG.pick(["flared", "horse-shaped", "horse"])

func getDoll3DScene():
	return "res://Player/Player3D/Parts/Penis/EquinePenis/EquinePenis.tscn"

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

func getPenisScale():
	return max(0.1 + (lengthCM - 5.0) / 21.0, 0.3)
	# return 0.1 + (lengthCM - 5.0) / 21.0

func getTraits():
	return {
		PartTrait.PenisFlare: true,
		"PartTrait.Hyperable": true,
	}

func generateDataFor(_dynamicCharacter):
	lengthCM = RNG.randf_range(20.0, 30.0)
	if(RNG.chance(5)):
		lengthCM = RNG.randf_range(10.0, 20.0)
	if(RNG.chance(5)):
		lengthCM = RNG.randf_range(30.0, 40.0)
	lengthCM = Util.roundF(lengthCM, 1)

	if(fluidProduction != null):
		fluidProduction.fillPercent(min(1.0, RNG.randf_range(0.8, 1.2)))
	generateRandomColors(_dynamicCharacter)
	
func generateRandomColors(_dynamicCharacter):
	var theHue = RNG.randf_range(0.0, 0.1)
	if(_dynamicCharacter != null):
		theHue = _dynamicCharacter.pickedSkinRColor.h
	if(RNG.chance(30)):
		pickedGColor = Color.from_hsv(RNG.randf_rangeX2(-0.1, 0.1), RNG.randf_range(0.7, 0.9), RNG.randf_range(0.5, 0.9))
		pickedBColor = pickedGColor
		pickedBColor.v = RNG.randf_rangeX2(0.3, 0.6)
	elif(RNG.chance(30) && _dynamicCharacter!=null):
		pickedGColor = RNG.pick([_dynamicCharacter.pickedSkinRColor, _dynamicCharacter.pickedSkinGColor, _dynamicCharacter.pickedSkinBColor])
		pickedGColor.h += RNG.randf_rangeX2(-0.1, 0.1)
		pickedGColor.s = RNG.randf_range(0.7, 0.9)
		pickedGColor.v = RNG.randf_range(0.7, 0.9)
		pickedBColor = pickedGColor
		pickedBColor.v = RNG.randf_rangeX2(0.3, 0.6)
	else:
		pickedGColor = ColorUtils.generateRandomVibrantColor()
		pickedBColor = pickedGColor
		pickedBColor.v = RNG.randf_rangeX2(0.3, 0.6)
	
	if(RNG.chance(30)):
		pickedGColor = Color.from_hsv(theHue, RNG.randf_range(0.3, 0.6), RNG.randf_rangeX2(0.1, 0.3))
		pickedBColor.v = RNG.randf_rangeX2(0.7, 0.95)
		pickedBColor.s = RNG.randf_rangeX2(0.7, 0.95)
