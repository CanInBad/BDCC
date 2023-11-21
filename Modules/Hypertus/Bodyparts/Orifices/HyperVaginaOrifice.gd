extends Orifice
# class_name VaginaOrifice

func _init():
	orificeType = OrificeType.Vagina
	
func getCapacity() -> float:
	var multi = 1.0
	var pc = bodypart.get_ref().getCharacter()
	if(pc != null):
		multi += pc.getCustomAttribute("BuffAttribute.HyperVaginaCapacity")
	return round((100.0 + 50.0 * pow(looseness,2)) * multi)

func getBaseElasticity() -> float:
	var multi = 1.0
	var pc = bodypart.get_ref().getCharacter()
	if(pc != null):
		multi += pc.getCustomAttribute("BuffAttribute.HyperVaginaElasticity")
	return 5.0 * multi

func getBaseResistance() -> float:
	var multi = 1.0
	var pc = bodypart.get_ref().getCharacter()
	if(pc != null):
		multi += pc.getCustomAttribute("BuffAttribute.HyperVaginaResistance")
	return 2.5 * multi

func getOverstuffedSpill() -> float:
	var pc = bodypart.get_ref().getCharacter()
	if pc.hasPerk("Perk.HyperStopOverfill"):
		return 0.0
	return 20.0