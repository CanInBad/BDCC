extends "res://Modules/0hyperVanillaSpecies/SpeciesExtend.gd"

func _init():
	id = "laquine"

func isPlayable():
	return true

func getVisibleName():
	return "Laquine"

func getVisibleDescription():
	return "Bunneigh"

func getDefaultLegs(_gender):
	return "rabbitlegs"

func getDefaultTail(_gender):
	return "rabbittail1"

func getDefaultHead(_gender):
	return "rabbithead"
	
func getDefaultEars(_gender):
	return "rabbitears1"

func getDefaultArms(_gender):
	if ("Fluffy Bodyparts" in GlobalRegistry.getModules()):
		return "fluffarms"

	return "anthroarms"

func getDefaultBody(_gender):
	if ("Fluffy Bodyparts" in GlobalRegistry.getModules()):
		return "fluffbody"

	return "anthrobody"

func getDefaultBreasts(_gender):
	if ("Fluffy Bodyparts" in GlobalRegistry.getModules()):
		if(_gender in [Gender.Male]):
			return "fluffmalebreastshyperable"
			
		return "fluffbreastshyperable"

	return .getDefaultBreasts(_gender)

func getAllowedBodyparts():
	return ["horsetail","shorttail","demonhorns3","unicornhorn","rabbitears2","rabbitears3","rabbittail2","rabbitlegs","rabbithead","hoofs", "knottedequinepenishyperable", "barbedequinepenishyperable"]
	
func getDefaultPenis(_gender):
	if(_gender in [Gender.Female]):
		return null

	return "equinepenishyperable"
		
func getEggCellOvulationAmount():
	return [
		[1, 7.0],
		[2, 13.0],
		[3, 20.0],
		[4, 17.0],
		[5, 15.0],
		[6, 9.0],
		[7, 7.5],
	]
