extends BodypartLeg

func _init():
	visibleName = "protogen legs 2"
	id = "protolegs2"

func getCompatibleSpecies():
	return ["protogen"]

func getDoll3DScene():
	return "res://Modules/ProtogenSpecies/Bodyparts/ProtoLegs2/ProtoLegs2.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
