extends SceneBase

func _init():
	sceneID = "CustomInputCustomizationHyperPenis"

func _run():
	match state:
		"":
			say("Enter the size of your character's hyper package:")
			var textBox:LineEdit = addTextbox("customSizePP")
			var _ok = textBox.connect("text_entered", self, "onTextBoxEnterPressed")
			
			addButton("Confirm", "Choose size (in centimeters)", "setSizePP")
			addButton("Cancel", "Cancel", "decided")
		"invalidinput":
			say("Invalid input")
			addButton("ok....", "I'll try harder", "tryagain")
			addButton("Nevermind", "Exit out", "decided")


func onTextBoxEnterPressed(_new_text:String):
	GM.main.pickOption("setSizePP", [])

func _react(_action: String, _args):
	# if(_action == "setSizePP"):
	# 	setFlag("Hypertus.HyperPenisCustomSize",getTextboxData("setSizePP"))
	# 	setState("confirm")
	# 	return
	match _action:
		"setSizePP":
			var fromTextbox = int(getTextboxData("customSizePP"))
			if typeof(fromTextbox) == TYPE_INT:
				if fromTextbox>0:
					say("You have picked "+ Util.cmToString(fromTextbox))
					setFlag("Hypertus.HyperPenisCustomSize",fromTextbox)
					endScene()
					return
				else:
					say("Invalid input")
					setState("invalidinput")
					return
		"tryagain":
			setState("")
			return

		"decided":
			endScene()


	setState(_action)
