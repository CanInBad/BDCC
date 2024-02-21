extends BodypartLeg

func _init():
	visibleName = "espeon legs"
	id = "Eganthrolegs"

func getVisibleDescription():
	return "Standard legs with Eurygrey's paws"

func getCompatibleSpecies():
	return ["Espeon"]

func getDoll3DScene():
	return "res://Modules/EspeonSpecies/Bodyparts/EspeonLegs/EspeonLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
