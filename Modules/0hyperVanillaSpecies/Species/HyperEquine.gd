extends Species

func _init():
	id = Species.Equine
	
func getVisibleName():
	return "Equine"

func getDefaultLegs(_gender):
	return "hoofs"

func getDefaultTail(_gender):
	return "horsetail"

func isPlayable():
	return true

func getVisibleDescription():
	return "Studs and mares"

func getDefaultHead(_gender):
	return "horsehead"

func getDefaultArms(_gender):
	return "anthroarms"

func getDefaultEars(_gender):
	return "horseears"

func getDefaultBreasts(_gender):
	if(_gender in [Gender.Male]):
		return "malebreastshyperable"
	
	return "breastshyperable"

func getDefaultVagina(_gender):
	if(_gender in [Gender.Female, Gender.Androgynous]):
		return "vaginahyperable"
	else:
		return null

func getDefaultAnus(_gender):
	return "anushyperable"

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return "equinepenishyperable"
	else:
		return null

func getAllowedBodyparts():
	return ["knottedequinepenishyperable"]

func getEggCellOvulationAmount():
	return [
		[1, 6.0],
		[2, 1.0],
		[3, 0.5],
	]
