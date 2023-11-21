extends Module

func getFlags():
	return {
		"HyperPenisCustomSize": flag(FlagType.Number),
	}

func _init():
	id = "Hypertus"
	author = "CanInBad"
	
	perks = [
		"res://Modules/Z_Hypertus/Perks/CumProduBuff1.gd",
		"res://Modules/Z_Hypertus/Perks/CumProduBuff2.gd",
		"res://Modules/Z_Hypertus/Perks/CumProduBuff3.gd",
		"res://Modules/Z_Hypertus/Perks/CumProduBuff4.gd",
		"res://Modules/Z_Hypertus/Perks/CriticalCombat.gd",
		"res://Modules/Z_Hypertus/Perks/CriticalLust.gd",
	]

	buffs = [
		"res://Modules/Z_Hypertus/Buffs/CumProductionBuff.gd",
		"res://Modules/Z_Hypertus/Buffs/CumPenisCapacityBuff.gd",
		"res://Modules/Z_Hypertus/Buffs/PhysicalDamageBuffRNG.gd",
		"res://Modules/Z_Hypertus/Buffs/LustDamageBuffRNG.gd",
	]
	bodyparts = [
		"res://Modules/Z_Hypertus/Bodyparts/Penises/CaninePenis.gd",
		"res://Modules/Z_Hypertus/Bodyparts/Penises/DragonPenis.gd",
		"res://Modules/Z_Hypertus/Bodyparts/Penises/EquinePenis.gd",
		"res://Modules/Z_Hypertus/Bodyparts/Penises/FelinePenis.gd",
		"res://Modules/Z_Hypertus/Bodyparts/Penises/HumanPenis.gd",
		"res://Modules/Z_Hypertus/Bodyparts/bob/HyperableBreasts.gd",
		"res://Modules/Z_Hypertus/Bodyparts/vagenie/HyperVagina.gd",
		"res://Modules/Z_Hypertus/Bodyparts/donkey/Anus.gd",
		"res://Modules/Z_Hypertus/Bodyparts/donkey/AnusWomb.gd",
	]
	scenes = [
		"res://Modules/Z_Hypertus/Scenes/CustomInputCustomizationPenis.gd"
	]
	events = [
		"res://Modules/Z_Hypertus/Events/CustomizationText.gd"
	]
	# if "knottedequinepenis" in GlobalRegistry.getBodypartsIdsBySlot(BodypartSlot.Penis):
	# if GlobalRegistry.getModule("Knotted Horse Cock"):
	if "Knotted Horse Cock" in GlobalRegistry.getModules():
		bodyparts.append("res://Modules/Z_Hypertus/Bodyparts/Penises/KnottedEquinePenis.gd")
		if "res://Modules/Z_Hypertus/Bodyparts/Penises/KnottedEquinePenis.gd" in bodyparts:
			Log.print("[b]"+id+":[/b] "+"## Knotted Equine Penis compatibility layer activated! ##")
		else:
			Log.print("[b]"+id+":[/b] "+"## Knotted Equine Penis compatibility layer **Failed** to load ##")
	# print(GlobalRegistry.getBodypartsIdsBySlot(BodypartSlot.Penis))
	# changed res://Player/Bodyparts/BodypartPenis.gd!!!!!
