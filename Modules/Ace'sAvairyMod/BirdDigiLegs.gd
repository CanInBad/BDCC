extends BodypartLeg

func _init():
	visibleName = "bird legs"
	id = "birddigilegs"

func getCompatibleSpecies():
	return ["bird", "avian", "gryphon"]

func getDoll3DScene():
	return "res://Modules/Ace'sAvairyMod/Bodyparts/BirdLegs/AvianDigiLegs.tscn"

func getTraits():
	return {
		PartTrait.LegsDigi: true,
	}
