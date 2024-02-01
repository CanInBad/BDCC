extends BodypartEars

func _init():
	visibleName = "Felkin ears"
	id = "felkinears"

func getCompatibleSpecies():
	return ["felkin"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/FelkinEars/FelkinEars.tscn"
