extends VBoxContainer

export(int, FLAGS, "SCENE", "EVENT", "QUEST") var filter:int = CrotchBlockEditorType.ALL

var editor

func can_drop_data(_position, _data):
	return true

func drop_data(_position, _data):
	if(_data.has("ref")):
		var theRef = _data["ref"]
		
		if(!theRef.isPickVersion):
			editor.onUserChangeMade()
			theRef.doSelfdelete()

func setEditor(newEd):
	editor = newEd

var collapsables = {}
onready var no_category_list = $NoCategoryList
onready var categories_list = $CategoriesList
var collapseScene = preload("res://Game/Datapacks/UI/PackVarsCollapsableRegion.tscn")

func populate():
	Util.delete_children(no_category_list)
	Util.delete_children(categories_list)
	collapsables = {}
	
	for blockID in CrotchBlocks.getAll():
		var testCodeblock = CrotchBlocks.createBlock(blockID)
		
		var supportedEditors:int = testCodeblock.getSupportedEditors()
		if(!(filter & supportedEditors)):
			continue
		
		var categories = testCodeblock.getCategories()
		
		for category in categories:
			var nodeToAddTo = null
			if(category == ""):
				nodeToAddTo = null
			else:
				if(collapsables.has(category)):
					nodeToAddTo = collapsables[category]
				else:
					var newCollapse = collapseScene.instance()
					newCollapse.editor = editor
					categories_list.add_child(newCollapse)
					newCollapse.makeCodeBlockMode()
					newCollapse.setText(category)
					collapsables[category] = newCollapse
					nodeToAddTo = newCollapse
		
			var visualScene = load("res://Game/Datapacks/UI/CrotchCode/CrotchBlockVisual.tscn").instance()
			if(visualScene == null):
				continue
			visualScene.editor = editor
			visualScene.id = blockID
			visualScene.setIsPickedVersion()
			if(nodeToAddTo == null):
				no_category_list.add_child(visualScene)
			else:
				nodeToAddTo.addToRegion(visualScene)
			visualScene.setCodeBlock(testCodeblock)

func _ready():
	#populate()
	pass