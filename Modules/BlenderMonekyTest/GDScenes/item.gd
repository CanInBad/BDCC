extends ItemBase

func _init():
	id = "CIBsuzanne"

func getVisibleName():
	return "The Blender Monkey"
	
func getDescription():
	var text = "I'm feeling depressed, have this"
	if GlobalRegistry.getModule("WingStatic") != null:
		text += "\n\nWill uses the same slot as wings as this is made for shitpost in mind, amd there is no actual head slot."
	return text

func getClothingSlot():
	return InventorySlot.Unique

func getPrice():
	return 8

func getTags():
	return [
		ItemTag.SoldByUnderwearVendomat,
		]

func getRiggedParts(_character):
	if(itemState.isRemoved()):
		return null
	return {
		"suzanne": "res://Modules/BlenderMonekyTest/GDScenes/suzanne.tscn",
	}

func canDye():
	return true

func getRequiredBodypart():
	return BodypartSlot.Head
