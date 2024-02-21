extends Node
var dialog = AcceptDialog.new()
onready var mainMenuScreen = get_tree().get_root().find_node("MainMenu",false,false)

func showDialog():
	yield(get_tree().create_timer(2.0), "timeout")
	print("success") 
	# var warnDialog = get_tree().root.add_child("res://Modules/0hyperSpeciesChk/dialogScene.gd")
	# warnDialog.popup_centered()
	# warnDialog.dialog_text("Test!")

func exit():
	var _quit = get_tree().root.quit(88)
## I give up. I will just make it appear on the log and see if people are stupid enough to not read description