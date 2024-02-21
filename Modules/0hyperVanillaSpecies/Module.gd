extends Module
var files = File.new()
var forceBreedEdition:bool = false
# var isExisted:bool = false
# const dialogFile = preload("res://Modules/0hyperSpeciesChk/dialog.gd")
# signal hypertusNotExist

func _init():
    # var _dummy = GlobalRegistry.connect("loadingFinished", self, "loadingFinished")
    id = "Hypertus Vanilla Species Overwriter"
    author = "CanInBad"
    var inEditor:bool = false
    if OS.has_feature("editor"):
        inEditor = true
    if !files.file_exists("res://Modules/Z_Hypertus/Module.gd"):
        var text:String = ""
        text += "###############################\n"
        text += "#  Hypertus mod check failed  #\n"
        text += "###############################\n"
        text += "\nForce Exiting!!! This is a safeguard to not destroy the game as much as this mod deals already\n"
        printErrorLBL(text)
        OS.alert("Hypertus mod doesn't exist! Please install it before continuing","Hypertus Checker")
        GlobalRegistry.get_tree().quit(32)
    else:
        Log.print(" ### "+id+": Hypertus found, Will not force exit")
    
        for i in GlobalRegistry.allSpecies.keys(): # Deregister vanilla species
            if i in ["canine","demon","dragon","equine","feline","human"]:
                var _ok = GlobalRegistry.allSpecies.erase(i)
                if inEditor:
                    Log.print("// "+id+": Erased\t"+i+"\tfrom GlobalRegistry allSpecies...")

        if !forceBreedEdition:
            species = [
                "res://Modules/0hyperVanillaSpecies/Species/HyperCanine.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperDemon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperDragon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperEquine.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperFeline.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperHuman.gd",
            ]
        else:
            species = [
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperCanine.gd",
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperDemon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperDragon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperEquine.gd",
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperFeline.gd",
                "res://Modules/0hyperVanillaSpecies/Species/awomb/HyperHuman.gd",
            ]

# func loadingFinished():
#     if !isExisted:
#         Log.warning(" ### "+id+": If you proceed without having hypertus, the game will crash because of null pointers! you have been warned....")

static func printErrorLBL(text):
    var lines:Array = text.split("\n")
    for i in lines: # error lines looks weird when everything is in 1 line. sorry I had to do this
        Log.printerr(i)