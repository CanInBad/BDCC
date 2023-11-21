extends BodypartAnus

func _init():
	visibleName = "hyperable anus"
	id = "anuswombhyperable"

func getCompatibleSpecies():
	return [Species.Any]

func hasWomb():
	return true

func getCharacterCreatorName():
	return "Hyperable Anus (with womb)"

# func getCharacterCreatorDesc():
# 	return "Unique kind of anus that also has a connection to the womb. By picking this you will be able to get pregnant from having anal sex"
