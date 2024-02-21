extends Species

func _init():
	id = "skulldog"
	
func getVisibleName():
	return "Skullwolf"

func getDefaultLegs(_gender):
	return "digilegs"

func getDefaultTail(_gender):
	return "caninetail"

func isPlayable():
	return true

func getVisibleDescription():
	return "Spooky scary"

func getDefaultHead(_gender):
	return "skullhead"

func getDefaultArms(_gender):
	return "anthroarms"

func getDefaultEars(_gender):
	return "fluffears"

func getDefaultBody(_gender):
	return "Witheredbody"

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return "caninepenishyperable"
	else:
		return null

func getDefaultBreasts(_gender):
	if(_gender in [Gender.Male]):
		return "malebreastshyperable"
	
	return "breastshyperable"

func getAllowedBodyparts():
	return ["caninetail", "huskytail", "canineears", "wolfears", "anuswombhyperable"]

func getDefaultAnus(_gender):
	return "anushyperable"

func getEggCellOvulationAmount():
	return [
		[2, 3.0],
		[3, 6.0],
		[4, 8.0],
		[5, 6.0],
		[6, 4.0],
		[7, 1.0],
	]
