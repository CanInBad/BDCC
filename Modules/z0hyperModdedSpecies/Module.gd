extends Module
var files = File.new()
var forceBreedEdition:bool = false

func _init():
    id = "Hypertus Modded Species Overwriter"
    var abbreviatedName = "HyperMSpeciesO"
    author = "CanInBad"
    var _inEditor:bool = false
    if OS.has_feature("editor"):
        _inEditor = true

    var speciesList = {#       |    File        |Anus|   
        # ID           |Enabled|    Name        |Womb|
        "avian":        [false, "Avian",        false],
        "bird":         [false, "Bird",         false],
        "gryphon":      [false, "Gryphon",      false],
        "hippogriff":   [false, "Hippogriff",   false],
        "avali":        [false, "Avali",        false],
        "Espeon":       [false, "Espeon",       false],
        "Leafeon":      [false, "Leafeon",      false],
        "lucario":      [false, "Lucario",      false],
        "protogen":     [false, "Protogen",     false],
        "rabbit":       [false, "Rabbit",       false],
        "rat":          [false, "Rat",          false],
        "easterndragon":[false, "EasternDragon",false],
        "felkin":       [false, "Felkin",       false],
        "kobold":       [false, "Kobold",       false],
        "snake":        [false, "Snake",        false],
        "wickerbeast":  [false, "WickerBeast",  false],
        "shark":        [false, "Shark",        false],
        "skulldog":     [false, "Skullwolf",    false],
        "sylveon":      [false, "Sylveon",      false],
        "synth":        [false, "Synth",        false],
    }

    # so it turns out that Ace does not use captial S in the name so it should be safe to not handle this
    # if "SharkSpecies" in GlobalRegistry.modules:
    #     if GlobalRegistry.modules["SharkSpecies"].author != "AverageAce":
    #         speciesList.erase("shark") # I don't know if 

    var textToReport:String = ""
    var textToReportError:String = ""
    var textErase:String = ""
    for i in GlobalRegistry.allSpecies.keys(): # Deregister vanilla species
        if i in speciesList.keys():
            if "anuswomb" in GlobalRegistry.allSpecies[i].getAllowedBodyparts():
                speciesList[i][2] = true
            var _ok = GlobalRegistry.allSpecies.erase(i)
            speciesList[i][0] = true # signified enabled
            if _inEditor:
                textErase += "\n\t// "+abbreviatedName+": Erased\t"+i+"\tfrom GlobalRegistry allSpecies..."
            if !(_ok):
                textToReportError += "\n\t!! "+abbreviatedName+": "+i+"\tcan't be remove from the GlobalRegistry! Please tell "+author+" about this."
    if textErase != "":
        Log.print(textErase)
    if textToReportError != "":
        printErrorLBL(textToReportError)
        textToReportError = "" # reset

    if (forceBreedEdition):
        textToReport = "\n ---- "+abbreviatedName+": Forcing **Breed edition** on all species!!!! ---- "

    for i in speciesList.keys():
        if speciesList[i][0]:
            var hasAnusWomb = speciesList[i][2]
            var fileName = speciesList[i][1]
            
            if (hasAnusWomb || forceBreedEdition):
                fileName = "awomb/"+fileName
            
            var theFile:String = "res://Modules/z0hyperModdedSpecies/Species/"+fileName+".gd"
            if files.file_exists(theFile):
                species.append(theFile)

                textToReport += "\n\t### "+abbreviatedName+": Successfully added \""+i+"\" to species list."
                if (hasAnusWomb):
                    if (!forceBreedEdition):
                        textToReport = textToReport + " (Breed edition)"

            else:
                textToReportError += "\n\t!!! "+abbreviatedName+": Something went wrong when adding \""+i+"\" to species list. Please tell "+author+" about this.\n\t↳("+theFile+")"
    
    if !textToReport.empty():
        Log.print(textToReport)
    if !textToReportError.empty():
        printErrorLBL(textToReportError)

static func printErrorLBL(text:String): # line by line
    var lines:Array = text.split("\n")
    for i in lines: # error lines looks weird when everything is in 1 line. sorry I had to do this
        Log.printerr(i)