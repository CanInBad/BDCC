extends BodypartLeg

func _init():
	visibleName = "Leafeon Legs"
	id = "Leaflegs"

func getCompatibleSpecies():
	return ["Leafeon"]


func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonLegs/LeafeonLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}

func getVisibleDescription():
	return "Legs with little leaves on them"
