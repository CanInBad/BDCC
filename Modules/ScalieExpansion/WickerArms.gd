extends BodypartArms

func _init():
	visibleName = "wicker arms"
	id = "wickerarms"

func getCompatibleSpecies():
	return ["wickerbeast"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/WickerArms/WickerArms.tscn"
