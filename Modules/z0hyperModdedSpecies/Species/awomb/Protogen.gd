extends Species

func _init():
	id = "protogen"
	
func getVisibleName():
	return "Protogen"

func getDefaultLegs(_gender):
	return "protolegs"

func getDefaultTail(_gender):
	return "prototail"

func isPlayable():
	return true

func getVisibleDescription():
	return "Fluffy cyborgs made by some unknown entity"

func getDefaultHead(_gender):
	return "protogenhead"

func getDefaultArms(_gender):
	return "protoarms"

func getDefaultEars(_gender):
	return "ProtoEars"

func getDefaultBody(_gender):
	return "protobody"

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
	return ["anushyperable", "anuswombhyperable", "wolfears", "caninetail", "huskytail"]

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return "caninepenishyperable"
	else:
		return null

func getEggCellOvulationAmount():
	return [
		[2, 3.0],
		[3, 6.0],
		[4, 8.0],
		[5, 6.0],
		[6, 4.0],
		[7, 1.0],
	]
