extends BodypartHair

func _init():
	visibleName = "Leafeon Hair"
	id = "Leafeonflair"

func getCompatibleSpecies():
	return ["Leafeon"]

func getDoll3DScene():
	return "res://Modules/LeafeonSpecies/Bodyparts/LeafeonHair/LeafeonHair.tscn"
	
func getCharacterCreatorDesc():
	return "A leftover from development, if you see, dont use"

#I have tried like 6 different things to get the little flair thing short of making
#it the only option to select, its part of the head now, 
#and any kind of hair clips right over it
#when the game updated and I had to import everything over I lost track of the
#6 different ways I tried to do this, so the hair clipping one is gonna stick
#maybe I'll fix it some other time
