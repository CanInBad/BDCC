extends Module

func _init():
	id = "Hypertus"
	author = "CanInBad"
	
	perks = [
		"res://Modules/Hypertus/Perks/CumProduBuff1.gd",
		"res://Modules/Hypertus/Perks/CumProduBuff2.gd",
		"res://Modules/Hypertus/Perks/CumProduBuff3.gd",
		"res://Modules/Hypertus/Perks/CumProduBuff4.gd",
		"res://Modules/Hypertus/Perks/CriticalCombat.gd",
		"res://Modules/Hypertus/Perks/CriticalLust.gd",
	]

	buffs = [
		"res://Modules/Hypertus/Buffs/CumProductionBuff.gd",
		"res://Modules/Hypertus/Buffs/CumPenisCapacityBuff.gd",
		"res://Modules/Hypertus/Buffs/PhysicalDamageBuffRNG.gd",
		"res://Modules/Hypertus/Buffs/LustDamageBuffRNG.gd",
	]
	bodyparts = [
		"res://Modules/Hypertus/Bodyparts/Penises/CaninePenis.gd",
		"res://Modules/Hypertus/Bodyparts/Penises/DragonPenis.gd",
		"res://Modules/Hypertus/Bodyparts/Penises/EquinePenis.gd",
		"res://Modules/Hypertus/Bodyparts/Penises/FelinePenis.gd",
		"res://Modules/Hypertus/Bodyparts/Penises/HumanPenis.gd",
		"res://Modules/Hypertus/Bodyparts/bob/HyperableBreasts.gd",
		"res://Modules/Hypertus/Bodyparts/vagenie/HyperVagina.gd",
		"res://Modules/Hypertus/Bodyparts/donkey/Anus.gd",
		"res://Modules/Hypertus/Bodyparts/donkey/AnusWomb.gd",
	]
	if "knottedequinepenis" in GlobalRegistry.getBodypartsIdsBySlot(BodypartSlot.Penis):
		bodyparts.append("res://Modules/Hypertus/Bodyparts/Penises/KnottedEquinePenis.gd")
		print("Module "+id+": "+"## Knotted Equine Penis compatibility layer activated! ##")
	# print(GlobalRegistry.getBodypartsIdsBySlot(BodypartSlot.Penis))
	# changed res://Player/Bodyparts/BodypartPenis.gd!!!!!
