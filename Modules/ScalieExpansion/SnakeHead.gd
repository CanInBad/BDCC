extends BodypartHead

func _init():
	visibleName = "snake head"
	id = "snakehead"

func getCompatibleSpecies():
	return ["snake"]

func getDoll3DScene():
	return "res://Modules/ScalieExpansion/Bodyparts/SnakeHead/SnakeHead.tscn"

func getHeadLength():
	return 0.7
