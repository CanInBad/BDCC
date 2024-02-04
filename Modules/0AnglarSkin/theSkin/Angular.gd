extends SkinBase

func _init():
	id = "AngularSkin"

func getName():
	return "Angular"

func getPatternTexture():
	return preload("res://Modules/0AnglarSkin/theSkin/Angled.png")

func getFittingSkinTypes():
	return {
		SkinType.Fur: 1.0,
		SkinType.Scales: 1.0,
	}
