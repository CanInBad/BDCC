extends Species

func _init():
	id = "rabbit"

func isPlayable():
	return true

func getVisibleName():
	return "Rabbit"

func getVisibleDescription():
	return "Bunbun"

func getDefaultLegs(_gender):
	return "rabbitlegs"

func getDefaultTail(_gender):
	return "rabbittail1"

func getDefaultHead(_gender):
	return "rabbithead"

func getDefaultArms(_gender):
	return "anthroarms"

func getDefaultEars(_gender):
	return "rabbitears1"

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

func getAllowedBodyparts():
	return ["anuswombhyperable"]

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return "humanpenishyperable"
	else:
		return null

func getEggCellOvulationAmount():
	return [
		[1, 1.0],
		[2, 7.0],
		[3, 6.0],
		[4, 4.0],
		[5, 3.0],
		[6, 2.0],
		[7, 1.5],
	]
