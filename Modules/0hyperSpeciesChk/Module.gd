extends Module
var file = File.new()
var isExisted:bool = false
# const dialogFile = preload("res://Modules/0hyperSpeciesChk/dialog.gd")
signal hypertusNotExist

func _init():
    var _dummy = GlobalRegistry.connect("loadingFinished", self, "loadingFinished")
    id = "Hypertus Species Extension Checker"
    author = "CanInBad"
    if !file.file_exists("res://Modules/Z_Hypertus/Module.gd"):
        var text:String = ""
        text += "##############################\n"
        text += "#  Hypertus mod check failed #\n"
        text += "##############################\n"
        Log.error(text)
        emit_signal("hypertusNotExist")
    else:
        isExisted = true
        Log.print(" ### "+id+": Hypertus found")
    
    # if !isExisted:
    # 	dialogFile.new().exit()

func loadingFinished():
    if !isExisted:
        Log.warning(" ### "+id+": If you proceed without having hypertus, the game will crash because of null pointers! you have been warned....")
