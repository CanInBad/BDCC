extends Species

func _init():
	id = "synth"
	
func getVisibleName():
	return "Synth"

func getDefaultLegs(_gender):
	return "synthlegs"

func getDefaultTail(_gender):
	return "synthtail"

func isPlayable():
	return true

func getVisibleDescription():
	return "Robot Lizards"

func getDefaultHead(_gender):
	return "synthhead"

func getDefaultArms(_gender):
	return "syntharms"

func getDefaultEars(_gender):
	return "Synthears"

func getDefaultBody(_gender):
	return "synthbody"

func getDefaultBreasts(_gender):
	if(_gender in [Gender.Male]):
		return "malebreastshyperable"
	
	return "breastshyperable"

func getDefaultPenis(_gender):
	if(_gender in [Gender.Male, Gender.Androgynous]):
		return RNG.pick(["synthpenishyperable", "synthequinepenishyperable", "synthpenishyperablehuman"])
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


func onDynamicNpcCreation(_npc, _args):
	_npc.giveBodypartUnlessSame(GlobalRegistry.createBodypart("baldhair"))
