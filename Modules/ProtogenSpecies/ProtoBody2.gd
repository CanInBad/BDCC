extends BodypartBody

func _init():
	visibleName = "protogen body 2"
	id = "protobody2"

func getCompatibleSpecies():
	return ["protogen"]

func getDoll3DScene():
	return "res://Modules/ProtogenSpecies/Bodyparts/ProtoBody2/ProtoBody2.tscn"
