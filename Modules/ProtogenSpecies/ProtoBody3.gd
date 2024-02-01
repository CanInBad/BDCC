extends BodypartBody

func _init():
	visibleName = "Protogen Body 3"
	id = "protobody3"

func getCompatibleSpecies():
	return ["protogen"]

func getDoll3DScene():
	return "res://Modules/ProtogenSpecies/Bodyparts/ProtoBody3/ProtoBody3.tscn"
