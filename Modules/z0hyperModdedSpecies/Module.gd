extends Module
var files = File.new()
var forceBreedEdition:bool = false
var _inEditor:bool = false

func _init():
    id = "Hypertus Modded Species Overwriter"
    var abbreviatedName = "HyperMSpeciesO"
    author = "CanInBad"
    if OS.has_feature("editor"):
        _inEditor = true

    forceBreedEdition = GlobalRegistry.getModule("Hypertus Vanilla Species Overwriter").get("forceBreedEdition")

    var speciesList = {#       |    File        |Anus|   
        # ID           |Enabled|    Name        |Womb|
        "ampwave":	    [false, "Ampwave",      false],
        "avali":	    [false, "Avali",        false],
        "avian":	    [false, "Avian",        false],
        "bird":	        [false, "Bird",         false],
        "bovine":	    [false, "Bovine",       false],
        "crow":	        [false, "Crow",         false],
        "deer":	        [false, "Deer",         false],
        "easterndragon":[false, "Easterndragon",false],
        "Espeon":	    [false, "Espeon",       false],
        "felkin":	    [false, "Felkin",       false],
        "gryphon":	    [false, "Gryphon",      false],
        "hippogriff":	[false, "Hippogriff",   false],
        "houndoom":	    [false, "Houndoom",     false],
        "kobold":	    [false, "Kobold",       false],
        "laquine":	    [false, "Laquine",      false],
        "Leafeon":	    [false, "Leafeon",      false],
        "lopunny":	    [false, "Lopunny",      false],
        "lucario":	    [false, "Lucario",      false],
        "nightstalker":	[false, "Nightstalkers",false],
        "protogen":	    [false, "Protogen",     false],
        "rabbit":	    [false, "Rabbit",       false],
        "racoon":	    [false, "Racoon",       false],
        "rat":	        [false, "Rat",          false],
        "seahorse":	    [false, "Seahorse",     false],
        "shark":	    [false, "Shark",        false],
        "skulldog":	    [false, "Skullwolf",    false],
        "snake":	    [false, "Snake",        false],
        "sylveon":	    [false, "Sylveon",      false],
        "synth":	    [false, "Synth",        false],
        "treenuts":	    [false, "Treenuts",     false],
        "wickerbeast":	[false, "Wickerbeast",  false],
}


    if false: # sorting using filename
        var yes2 = []
        for i in speciesList:
            yes2.append(speciesList[i][1])
        yes2.sort()
        var _text = "{\n"
        for i in range(yes2.size()):
            for j in speciesList:
                if yes2[i] == speciesList[j][1]:
                    _text += "\t\""+j+"\":\t["+str(speciesList[j][0]).to_lower()+", \""+str(speciesList[j][1])+"\", "+str(speciesList[j][2]).to_lower()+"],\n"
                    continue
        _text += "}"
        print(_text)

    # so it turns out that Ace does not use captial S in the name so it should be safe to not handle this
    # if "SharkSpecies" in GlobalRegistry.modules:
    #     if GlobalRegistry.modules["SharkSpecies"].author != "AverageAce":
    #         speciesList.erase("shark") # I don't know if 

    var textToReport:String = ""
    var textToReportError:String = ""
    var textErase:String = ""
    for specie in GlobalRegistry.allSpecies.keys(): # Deregister vanilla species
        if specie in speciesList.keys():
            if "anuswomb" in GlobalRegistry.allSpecies[specie].getAllowedBodyparts():
                speciesList[specie][2] = true
            var _ok = GlobalRegistry.allSpecies.erase(specie)
            speciesList[specie][0] = true # signified enabled
            if _inEditor:
                textErase += "\n\t// "+abbreviatedName+": Erased\t"+specie+"\tfrom GlobalRegistry allSpecies..."
            if !(_ok):
                textToReportError += "\n\t!! "+abbreviatedName+": "+specie+"\tcan't be remove from the GlobalRegistry! Please tell "+author+" about this."
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
            var willHaveAWomb = (hasAnusWomb || forceBreedEdition)
            
            var theFile:String = "res://Modules/z0hyperModdedSpecies/Species/"+fileName+".gd"
            if files.file_exists(theFile):
                GlobalRegistry.registerSpecies(theFile)

                if willHaveAWomb:
                    GlobalRegistry.getSpecies(i).anus = "anuswombhyperable"

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

func logPrintOnDemand(txt):
	if _inEditor:
		Log.print(txt)

func logErrorOnDemand(txt):
	if _inEditor:
		Log.error(txt)

static func printErrorLBL(text:String): # line by line
    var lines:Array = text.split("\n")
    for i in lines: # error lines looks weird when everything is in 1 line. sorry I had to do this
        Log.printerr(i)