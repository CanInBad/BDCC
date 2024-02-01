extends BodypartEars

func _init():
	visibleName = "Wicker ears"
	id = "wickerears"

func getCompatibleSpecies():
	return ["wickerbeast"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/WickerEars/WickerEars.tscn"
