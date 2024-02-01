extends Module

func _init():
	id = "RatSpeciesModule"
	author = "Fantos"
	
	bodyparts = [
		"res://Modules/RatSpeciesModule/RatEars.gd",
		"res://Modules/RatSpeciesModule/RatEars_custom.gd",
		"res://Modules/RatSpeciesModule/RatHead.gd",
		"res://Modules/RatSpeciesModule/RatHead_custom.gd",
		"res://Modules/RatSpeciesModule/RatTail.gd",
		"res://Modules/RatSpeciesModule/RatTail_custom.gd"
	]
	species = [
		"res://Modules/RatSpeciesModule/Rat.gd"
	]
