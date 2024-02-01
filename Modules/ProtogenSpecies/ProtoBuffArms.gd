extends BodypartArms

func _init():
	visibleName = "Proto Buff"
	id = "protobuffarms"

func getCompatibleSpecies():
	return ["protogen"]

func getDoll3DScene():
	return "res://Modules/ProtogenSpecies/Bodyparts/ProtoBuffArms/ProtoBuffArms.tscn"
