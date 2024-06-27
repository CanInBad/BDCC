extends Module
var files = File.new()
var forceBreedEdition:bool = false
var strSpecies = ["canine","demon","dragon","equine","feline","human"]

# var isExisted:bool = false
# const dialogFile = preload("res://Modules/0hyperSpeciesChk/dialog.gd")
# signal hypertusNotExist

var inEditor:bool = true

func logPrintOnDemand(txt):
	if inEditor:
		Log.print(txt)

func logErrorOnDemand(txt):
	if inEditor:
		Log.error(txt)

func _init():
    # var _dummy = GlobalRegistry.connect("loadingFinished", self, "loadingFinished")
    id = "Hypertus Vanilla Species Overwriter"
    author = "CanInBad"

    if OS.has_feature("debug"):
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
    
        var speciesPath = [
                "res://Modules/0hyperVanillaSpecies/Species/HyperCanine.gd",
                # "res://Modules/0hyperVanillaSpecies/Species/HyperDemon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperDragon.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperEquine.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperFeline.gd",
                "res://Modules/0hyperVanillaSpecies/Species/HyperHuman.gd"
        ]

        for i in GlobalRegistry.allSpecies.keys(): # Deregister vanilla species
            if i in strSpecies:
                if i == "demon":
                    logPrintOnDemand("skipped demon")
                    print(String(GlobalRegistry.getSpecies(i).getDefaultHead(NpcGender.Male)))
                    if GlobalRegistry.getSpecies(i).getDefaultHead(NpcGender.Male) == "wolfhead":
                        logPrintOnDemand("// "+id+": Made\t"+i+"\tto be hellhound!")
                        speciesPath.append("res://Modules/0hyperVanillaSpecies/Species/Compat/HyperHellhound.gd")
                    else:
                        logPrintOnDemand("// "+id+": Made\t"+i+"\tis a normal demon")
                        speciesPath.append("res://Modules/0hyperVanillaSpecies/Species/HyperDemon.gd")
                var _ok = GlobalRegistry.allSpecies.erase(i)
                logPrintOnDemand("// "+id+": Erased\t"+i+"\tfrom GlobalRegistry allSpecies...")

        for path in speciesPath:
            logPrintOnDemand("")
            GlobalRegistry.registerSpecies(path)

        if !forceBreedEdition:
            if !inEditor:
                if files.file_exists("res://.breedEdition"):
                    Log.error("\t"+id+": It is recommended to play with one of the version and not both")
                    OS.alert("It is recommended to play with one of the version and not both","Hypertus Species")
            else:
                logPrintOnDemand("\t"+id+": currently in editor, skipped blocking breedEdition")
        else:
            for i in strSpecies:
                GlobalRegistry.getSpecies(i).anus = "anuswombhyperable"



# func loadingFinished():
#     if !isExisted:
#         Log.warning(" ### "+id+": If you proceed without having hypertus, the game will crash because of null pointers! you have been warned....")

static func printErrorLBL(text):
    var lines:Array = text.split("\n")
    for i in lines: # error lines looks weird when everything is in 1 line. sorry I had to do this
        Log.printerr(i)