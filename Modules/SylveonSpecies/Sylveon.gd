extends Species

func _init():
	id = "sylveon"
	
func getVisibleName():
	return "Sylveon"

func getDefaultLegs(_gender):
	return "Sylvelegs1"

func getDefaultTail(_gender):
	return "sylveontail"

func isPlayable():
	return true

func getVisibleDescription():
	return "Funny LGBT Eevee"

func getDefaultHead(_gender):
	return "sylveonhead"

func getDefaultArms(_gender):
	return "sylveonarms"

func getDefaultEars(_gender):
	return "sylveonears1"

func getDefaultBody(_gender):
	return "Sylvebody"

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
	return RNG.pick(["anushyperable","anuswombhyperable"])

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return "caninepenishyperable"
	else:
		return null

func getEggCellOvulationAmount():
	return [
		[1, 2.0],
		[2, 8.0],
		[3, 6.0],
		[4, 4.0],
		[5, 2.0],
		[6, 1.0],
		[7, 0.5],
	]
