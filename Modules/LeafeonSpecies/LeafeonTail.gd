extends BodypartTail

func _init():
	visibleName = "Leafeon Tail"
	id = "leafeontail"

func getCompatibleSpecies():
	return ["Leafeon"]


func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["leafy"])

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonTail/LeafeonTail.tscn"
