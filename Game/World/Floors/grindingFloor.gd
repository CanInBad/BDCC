extends SubGameWorld



func _on_grindingRoomCIB_enter(_room):
	GM.main.playAnimation(StageScene.Duo, "stand", {npc="caninbad", npcAction="sit"})
	# room.addButton("Leave", "Return to the prison", "leave")


func _on_grindingRoomCIB_react(_room,_key):
	pass
	# if(key == "leave"):
	# 	GM.pc.setLocation("yard_deadend1")
	# 	GM.main.reRun()
