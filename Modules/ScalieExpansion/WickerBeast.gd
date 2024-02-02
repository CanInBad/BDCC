extends Species

func _init():
	id = "wickerbeast"
	
func getVisibleName():
	return "Wickerbeast"

func getDefaultLegs(_gender):
	return "digilegs"

func getDefaultTail(_gender):
	return "wickertail"

func isPlayable():
	return true

func getVisibleDescription():
	return "big fuckers"

func getDefaultArms(_gender):
	return "wickerarms"

func getDefaultHorns(_gender):
	return "backspiralhorns"

func getDefaultHead(_gender):
	return "wickerhead"

func getDefaultEars(_gender):
	return "wickerears"

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
		return "dragonpenismhyper"
	else:
		return null

func getEggCellOvulationAmount():
	return [
		[1, 4.0],
		[2, 5.0],
		[3, 3.0],
		[4, 1.0],
		[5, 0.4],
	]

func getSkinType():
	return SkinType.Fur
