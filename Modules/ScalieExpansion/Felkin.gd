extends Species

func _init():
	id = "felkin"
	
func getVisibleName():
	return "Felkin"

func getDefaultLegs(_gender):
	return "digilegs"

func getDefaultTail(_gender):
	return "horsetail"

func isPlayable():
	return true

func getVisibleDescription():
	return "huge dragon-equines"

func getDefaultArms(_gender):
	return "anthroarms"

func getDefaultHorns(_gender):
	return "backspiralfull"

func getDefaultHead(_gender):
	return "felkinhead2"

func getDefaultEars(_gender):
	return "felkinears"

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
		return "equinepenishyperable"
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

func getAllowedBodyparts():
	return "horsetail, demonhorns2, dragonhorns, dragonhorns2"
