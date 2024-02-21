extends BodypartTail

func _init():
	visibleName = "Leafeon Tail Custom"
	id = "leafeontail_skin"

func getCompatibleSpecies():
	return ["Leafeon"]

func getLewdSizeAdjective():
	return RNG.pick(["long"])

func getLewdAdjective():
	return RNG.pick(["leafy"])

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonTail_Alt/LeafeonTailAlt.tscn"

func getCharacterCreatorDesc():
	return "Leafeon tail that is compatible with custom skins"
