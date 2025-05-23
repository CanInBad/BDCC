extends Spatial
class_name Doll3D

var state = {}
var parts = {}
var dollAttachmentZones = {}
var hiddenPartZones = {}
var hiddenAttachmentZones = {}
var overridenPartHidden = {}
var savedCharacterID
var temporaryState = {}
var exposedBodyparts = []
var skinData = {}

var armsCuffed = false
var armsPuppy = false
var legsCuffed = false
var legsPuppy = false
var breastsLeaking = false
var pussyLeaking = false
var anusLeaking = false
var cumAmount = 0
var cumColor = Color.white
var cummedInside = 0.0
var isFacingRight:bool = false

var temporaryRiggedParts = {}

var rememberedPenisScale = 1.0

# Info to adjust animations
var breastScale = 0.0
var headLength = 0.0


var selfChains = []
var sceneChains = []
var chainObjects = []
var rememberedChains = []

export(bool) var addTestBody = false
export(bool) var isOnlyPenis = false

var dollAttachmentZoneScene = preload("res://Player/Player3D/Parts/DollAttachmentZone.tscn")

onready var nipplesParticles = $BoneAttachments/NipplesBoneAttachment/NipplesParticles
onready var pussyParticles = $BoneAttachments/VaginaBoneAttachment/PussyParticles
onready var anusParticles = $BoneAttachments/VaginaBoneAttachment/AnusParticles
onready var pussy_cum_inside_particles = $BoneAttachments/VaginaBoneAttachment/PussyCumInsideParticles

onready var breastsJiggleBone = $DollSkeleton/BreastsJiggleBone
onready var bellyJiggleBone = $DollSkeleton/BellyJiggleBone
onready var buttJiggleBone = $DollSkeleton/ButtJiggleBone

func getDollSkeleton():
	return $DollSkeleton

func _ready():
	if(get_parent().has_method("addDoll")):
		get_parent().addDoll(self)
	
	if(!OPTIONS.isJigglePhysicsBreastsEnabled()):
		breastsJiggleBone.setEnabled(false)
	if(!OPTIONS.isJigglePhysicsBellyEnabled()):
		bellyJiggleBone.setEnabled(false)
	if(!OPTIONS.isJigglePhysicsButtEnabled()):
		buttJiggleBone.setEnabled(false)
	
	if(addTestBody):
		testBody()
	$RandomLeakTimer.start(RNG.randf_range(3, 20))
	
	if(GM.main != null && is_instance_valid(GM.main)):
		var _ok = GM.main.connect("saveLoadingFinished", self, "reconnect")
	setState("facing", ("right" if isFacingRight else "left"))

func testBody():
	addPartObject("body", load("res://Player/Player3D/Parts/Body/HumanBody/HumanBody.tscn").instance())
	#addPartObject("legs", load("res://Player/Player3D/Parts/Legs/HumanLegs/HumanLegs.tscn").instance())
	addPartObject("legs", load("res://Player/Player3D/Parts/Legs/DigiLegs/DigiLegs.tscn").instance())
	#addPartObject("head", load("res://Player/Player3D/Parts/Head/HumanHead/HumanHead.tscn").instance())
	addPartObject("head", load("res://Player/Player3D/Parts/Head/FelineHead/FelineHead.tscn").instance())
	#addPartObject("head", load("res://Player/Player3D/Parts/Head/CanineHead/CanineHead.tscn").instance())
	#addPartObject("head", load("res://Player/Player3D/Parts/Head/FoxHead/FoxHead.tscn").instance())
	#addPartObject("head", load("res://Player/Player3D/Parts/Head/WolfHead/WolfHead.tscn").instance())
	
	#addPartObject("breasts", load("res://Player/Player3D/Parts/Breasts/BreastsFlat/BreastsFlat.tscn").instance())
	#addPartObject("breasts", load("res://Player/Player3D/Parts/Breasts/BreastsSmall/BreastsSmall.tscn").instance())
	#addPartObject("breasts", load("res://Player/Player3D/Parts/Breasts/BreastsMedium/BreastsMedium.tscn").instance())
	#addPartObject("breasts", load("res://Player/Player3D/Parts/Breasts/BreastsCurvy/BreastsCurvy.tscn").instance())
	#addPartObject("breasts", load("res://Player/Player3D/Parts/Breasts/BreastsBig/BreastsBig.tscn").instance())
	addPartObject("hands", load("res://Player/Player3D/Parts/Arms/HumanArms/HumanArms.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/HumanEars/HumanEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/DragonEars/DragonEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/CanineEars/CanineEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/CatEars/CatEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/LynxEars/LynxEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/LynxEars2/LynxEars2.tscn").instance())
	addPartObject("ears", load("res://Player/Player3D/Parts/Ears/WolfEars/WolfEars.tscn").instance())
	#addPartObject("ears", load("res://Player/Player3D/Parts/Ears/DragonEars2/DragonEars2.tscn").instance())
	addPartObject("tail", load("res://Player/Player3D/Parts/Tail/DragonTail/DragonTail.tscn").instance())
	#addPartObject("tail", load("res://Player/Player3D/Parts/Tail/FelineTail/FelineTail.tscn").instance())
	#addPartObject("tail", load("res://Player/Player3D/Parts/Tail/CanineTail/CanineTail.tscn").instance())
	#addPartObject("tail", load("res://Player/Player3D/Parts/Tail/ShortTail/ShortTail.tscn").instance())
	#addPartObject("tail", load("res://Player/Player3D/Parts/Tail/HuskyTail/HuskyTail.tscn").instance())
	#addPartObject("penis", load("res://Player/Player3D/Parts/Penis/DragonPenis/DragonPenis.tscn").instance())
	#addPartObject("penis", load("res://Player/Player3D/Parts/Penis/HumanPenis/HumanPenis.tscn").instance())
	#addPartObject("penis", load("res://Player/Player3D/Parts/Penis/CaninePenis/CaninePenis.tscn").instance())
	addPartObject("penis", load("res://Player/Player3D/Parts/Penis/EquinePenis/EquinePenis.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/FerriHair/FerriHair.tscn").instance())
	addPartObject("hair", load("res://Player/Player3D/Parts/Hair/PonytailHair/PonytailHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/CombedBackHair/CombedBackHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/LongHair/LongHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/MessyHair/MessyHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/MohawkHair/MohawkHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/ShortHair/ShortHair.tscn").instance())
	#addPartObject("hair", load("res://Player/Player3D/Parts/Hair/SimpleHair/SimpleHair.tscn").instance())
	#addPartObject("head", load("res://Player/Player3D/Parts/Head/DragonHead/DragonHead.tscn").instance())
	addPartObject("horns", load("res://Player/Player3D/Parts/Horns/DragonHorns/DragonHorns.tscn").instance())
	#addPartObject("horns", load("res://Player/Player3D/Parts/Horns/DragonHorns2/DragonHorns2.tscn").instance())
	
	setState("gag", "gagged")
	setState("blindfold", "blindfolded")
	
	#setShapeKeyValue("Pregnant", 1.0)
	pass 

func updateMaterials():
	if(!OPTIONS.shouldUseAdvancedShaders()):
		return
	for slot in parts:
		var part = parts[slot]
		part.updateMaterial()

func setState(stateID, value):
	state[stateID] = value
	
	if(temporaryState.has(stateID)):
		return
	
	for slot in parts:
		var part = parts[slot]
		part.setState(stateID, value)

func setTemporaryState(stateID, value):
	temporaryState[stateID] = value
	
	for slot in parts:
		var part = parts[slot]
		part.setState(stateID, value)

func getState(stateID):
	if(state.has(stateID)):
		return state[stateID]
	return null

func getFinalState(stateID):
	if(temporaryState.has(stateID)):
		return temporaryState[stateID]
	if(state.has(stateID)):
		return state[stateID]
	return null

func clearTemporaryState():
	for stateID in temporaryState:
		if(state.has(stateID)):
			for slot in parts:
				var part = parts[slot]
				part.setState(stateID, state[stateID])
		else:
			for slot in parts:
				var part = parts[slot]
				part.setState(stateID, "")
	temporaryState.clear()

func clearState():
	for stateID in state:
		if(temporaryState.has(stateID)):
			continue
		
		for slot in parts:
			var part = parts[slot]
			part.setState(stateID, "")
	state.clear()

func addPart(slot, partPath, callbackObj = null):
	addPartObject(slot, GlobalRegistry.instanceCached(partPath), callbackObj)

func addPartUnlessSame(slot, partPath):
	var callbackObj = null
	if(partPath is Array):
		callbackObj = partPath[1]
		partPath = partPath[0]
	
	if(parts.has(slot)):
		var oldpart: Spatial = parts[slot]
		if(oldpart.filename == partPath):
			if(callbackObj != null && callbackObj.has_method("onDollUpdate")):
				callbackObj.onDollUpdate(self, slot, oldpart)
			return
	addPart(slot, partPath, callbackObj)
		

func addPartObject(slot, part: Spatial, callbackObj = null):
	if(parts.has(slot)):
		parts[slot].onRemoved()
		parts[slot].queue_free()
		parts.erase(slot)
	
	part.setDoll3d(self)
	parts[slot] = part
	getDollSkeleton().getSkeleton().add_child(part)
	
	part.initPart(self)
	
	for attachmentProxy in part.getAttachProxies():
		var dollAttachmentZone = dollAttachmentZoneScene.instance()
		
		$DollAttachmentZones.add_child(dollAttachmentZone)
		dollAttachmentZone.setProxy(attachmentProxy)
		dollAttachmentZone.setSkeletonPath(dollAttachmentZone.get_path_to(getDollSkeleton().getSkeleton()))
		attachmentProxy.dollAttachmentZone = dollAttachmentZone
		dollAttachmentZone.shouldScaleWithBone = attachmentProxy.scaleWithBone
		dollAttachmentZone.chainOffset = attachmentProxy.chainOffset
			
		
		if(!dollAttachmentZones.has(attachmentProxy.zoneName)):
			dollAttachmentZones[attachmentProxy.zoneName] = []
		dollAttachmentZones[attachmentProxy.zoneName].append(dollAttachmentZone)
		
	for stateID in state:
		part.setState(stateID, state[stateID])
	
	if(callbackObj != null && callbackObj.has_method("onDollUpdate")):
		callbackObj.onDollUpdate(self, slot, part)
	
func removeDollAttachmentZone(attachZone):
	attachZone.queue_free()
	dollAttachmentZones[attachZone.zoneName].erase(attachZone)
	# remove it from our list
	
func removeSlot(slot):
	if(parts.has(slot)):
		parts[slot].onRemoved()
		parts[slot].queue_free()
		parts.erase(slot)

func hasSlot(slot):
	if(parts.has(slot)):
		return true
	return false

func setShapeKeyValue(shapeKey: String, value: float):
	for slot in parts:
		var part = parts[slot]
		
		part.setShapeKeyValue(shapeKey, value)

func reconnect():
	if(savedCharacterID == null || savedCharacterID == ""):
		return
	
	disconnectFromOld()
	var cashedCharID = savedCharacterID
	savedCharacterID = ""
	loadCharacter(cashedCharID)

func disconnectFromOld():
	if(savedCharacterID != null && (savedCharacterID is String && savedCharacterID != "")):
		var ch = getCharFromID(savedCharacterID)
		if(ch == null || !is_instance_valid(ch)):
			return
		if(ch.is_connected("bodypart_changed", self, "onCharacterBodypartChanged")):
			ch.disconnect("bodypart_changed", self, "onCharacterBodypartChanged")

func getCharFromID(charID):
	if(!(charID is String)):
		return charID
	return GlobalRegistry.getCharacter(charID)

func loadCharacter(charID):
	var ch = getCharFromID(charID)
	if(ch == null || !is_instance_valid(ch)):
		return
	
	if(savedCharacterID == charID):
		if(ch.has_method("softUpdateDoll")):
			ch.softUpdateDoll(self)
		return
	
	if(ch.has_method("updateDoll")):
		disconnectFromOld()
		ch.updateDoll(self)
		savedCharacterID = charID
		var _ok = ch.connect("bodypart_changed", self, "onCharacterBodypartChanged")
		
func prepareCharacter(charID):
	stopCumInside()
	stopCumPenis()
	clearTemporaryState()
	loadCharacter(charID)
	clearOverrideAlpha()
	for zone in dollAttachmentZones:
		for attachment in dollAttachmentZones[zone]:
			attachment.clearTemporaryScenes()
	call_deferred("checkDirection") # Deferred because the character is usually flipped after this call

func checkDirection():
	var newIsFacingRight:bool = (get_scale().x < 0)
	
	if(newIsFacingRight != isFacingRight):
		isFacingRight = newIsFacingRight
		
		setState("facing", ("right" if isFacingRight else "left"))

func onCharacterBodypartChanged():
	var ch = getCharFromID(savedCharacterID)
	if(ch == null || !is_instance_valid(ch)):
		return
	if(ch.has_method("updateDoll")):
		ch.updateDoll(self)

func setExposedBodyparts(newExposedBodyparts):
	if(exposedBodyparts == newExposedBodyparts):
		return
	exposedBodyparts = newExposedBodyparts
	onCharacterBodypartChanged()

func getExposedBodyparts():
	return exposedBodyparts

func isForcedExposed(slot):
	return exposedBodyparts.has(slot)

func setBoneScaleVector(boneName: String, boneScale: Vector3):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	var boneId = skeleton.find_bone(boneName)
	if(boneId < 0):
		return
	var newTransform:Transform = Transform.IDENTITY
	newTransform = newTransform.scaled(boneScale)
	
	skeleton.set_bone_custom_pose(boneId, newTransform)

func setBoneScale(boneName: String, boneScale: float):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	var boneId = skeleton.find_bone(boneName)
	if(boneId < 0):
		return
	var newTransform:Transform = Transform.IDENTITY
	newTransform = newTransform.scaled(Vector3(boneScale,boneScale,boneScale))
	
	skeleton.set_bone_custom_pose(boneId, newTransform)

func setBoneScaleAndOffset(boneName: String, boneScale: float, offset: Vector3, scaleOnZ:bool = false):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	var boneId = skeleton.find_bone(boneName)
	if(boneId < 0):
		return
	var newTransform:Transform = Transform.IDENTITY
	newTransform = newTransform.scaled(Vector3(boneScale,boneScale,boneScale if scaleOnZ else 1.0))
	newTransform = newTransform.translated(offset)
	
	skeleton.set_bone_custom_pose(boneId, newTransform)

func setBoneScale3AndOffset(boneName: String, boneScale: Vector3, offset: Vector3):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	var boneId = skeleton.find_bone(boneName)
	if(boneId < 0):
		return
	var newTransform:Transform = Transform.IDENTITY
	newTransform = newTransform.scaled(boneScale)
	newTransform = newTransform.translated(offset)
	
	skeleton.set_bone_custom_pose(boneId, newTransform)

func setBoneOffset(boneName: String, offset: Vector3):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	var boneId = skeleton.find_bone(boneName)
	if(boneId < 0):
		return
	var newTransform:Transform = Transform.IDENTITY
	newTransform = newTransform.translated(offset)
	
	skeleton.set_bone_custom_pose(boneId, newTransform)

func setButtScale(buttScale: float, tailScale:float = 1.0):
	var buttScaleMod = 1.0 + clamp(buttScale - 1.0, 0.0, 0.2)
	setBoneScaleAndOffset("DeformButt", buttScale*buttScaleMod, Vector3(-0.109556, -0.109556, 0.0)*clamp((buttScale-1.0)*3, 0.0, 1.0))
	setBoneScaleAndOffset("Tail1", tailScale, Vector3(0.0,0.0,0.05)+Vector3(0.409556, 0.409556, 0.0)*max(buttScale-1.0, 0.0))

func setBreastsScale(breastsScale: float):
	var mul = 0.0
	if(breastsScale <= 1.2):
		mul = max(1.2 - breastsScale, 0.0)
	if(mul < 1.0):
		setBoneScaleAndOffset("DeformBreasts", breastsScale, Vector3(0.18713, 0.399727, 0.0)*mul)
	else:
		setBoneScaleAndOffset("DeformBreasts", breastsScale, Vector3(0.18713, 0.199727, 0.0)*mul)
	breastsJiggleBone.stiffness = min(1.0, 0.16 / max(0.1, breastsScale))

func setPregnancy(progress: float):
	progress = min(5.0, progress) # 5.0 is a hard limit. It already looks weird at 5 and only gets worse
	var horisontalBellyScale = 1.0+max(0.0, progress-1.0)
	var verticalBellyScale = clamp(1.0+max(0.0, progress-1.0), 0.0, 2.0)
	
	#setBoneOffset("DeformBelly", Vector3(-0.03244, 0.706324, 0.0)*progress)
	setBoneScale3AndOffset("DeformBelly", Vector3(verticalBellyScale, horisontalBellyScale, horisontalBellyScale), Vector3(-0.03244*0.0, 0.706324, 0.0)*clamp(progress, -0.1, 1.0))
	bellyJiggleBone.stiffness = 0.1 / ((clamp(progress, 0.0, 1.0) + 0.2) / 1.2)

func setThighThickness(progress: float):
	setBoneOffset("DeformThigh.L", Vector3(-0.008168, 0.386037, 0.0)*progress)
	setBoneOffset("DeformThigh.R", Vector3(-0.008168, 0.386037, 0.0)*progress)

func setPenisScale(penisScale: float):
	setBoneScale("Penis", penisScale)
	rememberedPenisScale = penisScale

func clampPenisScale(minPenisScale: float, maxPenisScale: float):
	rememberedPenisScale = clamp(rememberedPenisScale, minPenisScale, maxPenisScale)
	setBoneScale("Penis", rememberedPenisScale)

func setBallsScale(newScale: float):
	var offsetScale = 0.0
	if(newScale <= 1.0):
		offsetScale = 0.0
	elif(newScale <= 3.0):
		offsetScale = newScale / 3.0
	else:
		offsetScale = 1.0
	
	setBoneScaleAndOffset("Balls", newScale, Vector3(0.0, 0.156431, 0.0)*offsetScale)


func _on_Doll3DTooltip_mouseEntered(bodypartID):
	if(savedCharacterID is String && savedCharacterID != "" && bodypartID != "" && is_visible_in_tree() && !isOnlyPenis):
		var character = getCharFromID(savedCharacterID)
		if(character == null):
			return
		
		var bodypart:Bodypart = character.getBodypart(bodypartID)
		if(bodypart == null):
			return
			
		GlobalTooltip.showTooltip(bodypart.getName(), bodypart.getTooltipInfo())
		

func _on_Doll3DTooltip_mouseExited(bodypartID):
	if(savedCharacterID is String && savedCharacterID != "" && bodypartID != ""):
		var character = getCharFromID(savedCharacterID)
		if(character == null):
			return
		
		var bodypart:Bodypart = character.getBodypart(bodypartID)
		if(bodypart == null):
			return
		GlobalTooltip.hideTooltip()

func setHiddenParts(newHiddenParts):
	hiddenPartZones = newHiddenParts

func setHiddenAttachmentZones(newHiddenAttachmentZones):
	hiddenAttachmentZones = newHiddenAttachmentZones

func updateAlphaKeepOnlyPenis():
	for slot in parts:
		if(!(slot in [BodypartSlot.Penis, "chastity_cage"])):
			parts[slot].visible = false
			continue
		
		if(hiddenPartZones.has(slot) && !overridenPartHidden.has(slot)):
			parts[slot].visible = false
		else:
			parts[slot].visible = true
			
	for attachmentID in dollAttachmentZones:
		for attach in dollAttachmentZones[attachmentID]:
			attach.visible = false

func updateAlpha():
	if(isOnlyPenis):
		updateAlphaKeepOnlyPenis()
		return
	
	for slot in parts:
		if(hiddenPartZones.has(slot) && !overridenPartHidden.has(slot)):
			parts[slot].visible = false
		else:
			parts[slot].visible = true
			
	for attachmentID in dollAttachmentZones:
		if(hiddenAttachmentZones.has(attachmentID)):
			for attach in dollAttachmentZones[attachmentID]:
				attach.visible = false
		else:
			for attach in dollAttachmentZones[attachmentID]:
				attach.visible = true

func setParts(newparts: Dictionary):
	var dirtyFlags = {}
	for slot in parts:
		dirtyFlags[slot] = false
		
	for newslot in newparts:
		addPartUnlessSame(newslot, newparts[newslot])
		dirtyFlags[newslot] = true
	for newslot in temporaryRiggedParts:
		addPartUnlessSame(newslot, temporaryRiggedParts[newslot])
		dirtyFlags[newslot] = true
	
	for slot in parts.keys():
		if(!dirtyFlags[slot]):
			removeSlot(slot)
			
	updateAlpha()

func setCustomParts(newparts: Dictionary):
	if(temporaryRiggedParts == newparts):
		return
	
	temporaryRiggedParts = newparts

func clearOverrideAlpha():
	for slot in overridenPartHidden:
		if(hiddenPartZones.has(slot)):
			parts[slot].visible = false
		else:
			parts[slot].visible = true
	overridenPartHidden.clear()

func forceSlotToBeVisible(zone):
	overridenPartHidden[zone] = true
	if(parts.has(zone)):
		parts[zone].visible = true

func setUnriggedParts(scenes):
	for zone in dollAttachmentZones:
		for attachment in dollAttachmentZones[zone]:
			if(scenes.has(zone)):
				attachment.setScenes(scenes[zone])
			else:
				attachment.setScenes([])
	
#	for part in parts:
#		for zone in parts[part].getAttachZones():
#			var attachments = parts[part].getAttachZones()[zone]
#			for attachment in attachments:
#				if(scenes.has(zone)):
#					attachment.setScenes(scenes[zone])
#				else:
#					attachment.setScenes([])

func attachTemporaryUnriggedPart(zone, scene):
	if(dollAttachmentZones.has(zone)):
		for attachment in dollAttachmentZones[zone]:
			attachment.addTemporaryScene(scene)

func playAnimation(animName, blend = 0.1, speed = 1.0):
	$DollSkeleton/AnimationPlayer.play(animName, blend, speed)

func getAnimPlayer():
	return $DollSkeleton/AnimationPlayer

func getAnimPlayer2():
	return $DollSkeleton2/AnimationPlayer

func setArmsCuffed(newcuffed):
	armsCuffed = newcuffed
	
func getArmsCuffed():
	return armsCuffed
	
func setLegsCuffed(newcuffed):
	legsCuffed = newcuffed
	
func getLegsCuffed():
	return legsCuffed

func setArmsPuppy(newcuffed):
	armsPuppy = newcuffed
	
func getArmsPuppy():
	return armsPuppy
	
func setLegsPuppy(newcuffed):
	legsPuppy = newcuffed
	
func getLegsPuppy():
	return legsPuppy

func getCharacterID():
	return savedCharacterID

func setBreastsLeaking(newBreastsLeaking):
	breastsLeaking = newBreastsLeaking

func setPussyLeaking(newPussyLeaking):
	pussyLeaking = newPussyLeaking

func setAnusLeaking(newAnusLeaking):
	anusLeaking = newAnusLeaking

func setupCumParticles(particlesNode:CPUParticles, intensity:float, howoften:float = 3.0, velocityMod:float = 1.0, velocityRandom:float = 1.0):
	howoften *= 2.0
	var newAmount = Util.maxi(5, int(intensity * 10.0))
	if(newAmount != particlesNode.amount):
		particlesNode.amount = newAmount
	particlesNode.scale_amount = clamp(0.5 + intensity / 2.0, 0.5, 2.5)
	particlesNode.lifetime = howoften
	particlesNode.tangential_accel = clamp(intensity / 4.0, 0.0, 1.5)
	particlesNode.initial_velocity = clamp(intensity*1.1*velocityMod, 0.5, 1.2*velocityMod)
	particlesNode.initial_velocity_random = velocityRandom
	particlesNode.explosiveness = clamp(0.7 + howoften / 30.0, 0.0, 0.92)
	particlesNode.preprocess = howoften - RNG.randf_range(0.0, 1.0)
	particlesNode.speed_scale = 2.0

onready var penis_cum_particles = $BoneAttachments/PenisTipAttachment/PenisCumParticles
onready var chastity_cum_particles = $BoneAttachments/PenisBoneAttachment/ChastityCumParticles
onready var penis_cum_particles_2 = $BoneAttachments/PenisTipAttachment/PenisCumParticles2

func startCumPenis(intensity:float, howoften:float = 3.0, isChastity=false):
	if(!OPTIONS.isVisibleCumShotsEnabled()):
		return
	intensity *= OPTIONS.getCumShotsIntensityMult()
	if(isChastity):
		chastity_cum_particles.scale = Vector3(1.0/rememberedPenisScale, 1.0/rememberedPenisScale, 1.0/rememberedPenisScale)
		setupCumParticles(chastity_cum_particles, intensity, howoften, 3.0, 0.3)
		chastity_cum_particles.emitting = true
	else:
		penis_cum_particles.scale = Vector3(1.0/rememberedPenisScale, 1.0/rememberedPenisScale, 1.0/rememberedPenisScale)
		setupCumParticles(penis_cum_particles, intensity, howoften, 3.0, 0.1)
		setupCumParticles(penis_cum_particles_2, intensity*0.3, howoften * 1.7, 7.0, 0.2)
		penis_cum_particles.emitting = true
		penis_cum_particles_2.emitting = true

func stopCumPenis():
	chastity_cum_particles.emitting = false
	penis_cum_particles.emitting = false
	penis_cum_particles_2.emitting = false

func setupCumParticlesInside(particlesNode:CPUParticles, intensity:float, howoften:float = 3.0, velocityMod:float = 1.0, velocityRandom:float = 0.5):
	howoften *= 1.0
	var newAmount = Util.maxi(5, int(intensity * 10.0))
	if(newAmount != particlesNode.amount):
		particlesNode.amount = newAmount
	particlesNode.scale_amount = clamp(0.5 + intensity / 2.0, 0.5, 2.5)
	particlesNode.lifetime = howoften
	particlesNode.tangential_accel = clamp(intensity / 4.0, 0.0, 1.5)
	particlesNode.initial_velocity = clamp(intensity*1.1*velocityMod, 0.5, 2.0*velocityMod)
	particlesNode.initial_velocity_random = velocityRandom
	particlesNode.explosiveness = clamp(0.4 + howoften / 20.0, 0.0, 0.8)
	particlesNode.preprocess = howoften - RNG.randf_range(0.0, 0.3)
	particlesNode.speed_scale = 1.0
	particlesNode.spread = 15.0

func startCumInside(intensity:float, howoften:float = 3.0):
	if(!OPTIONS.isVisibleCumShotsEnabled()):
		return
	intensity *= OPTIONS.getCumShotsIntensityMult()
	#intensity = 1.0
	#print(intensity)
	cummedInside = intensity
	setupCumParticlesInside(pussy_cum_inside_particles, intensity, howoften)
	if(!pussy_cum_inside_particles.emitting):
		pussy_cum_inside_particles.emitting = true

func stopCumInside():
	cummedInside = 0.0
	pussy_cum_inside_particles.emitting = false

func setCumAmount(theisOnCum):
	cumAmount = theisOnCum

func getCumAmount():
	return cumAmount

func setCumColor(theColor):
	cumColor = theColor

func getCumColor():
	return cumColor

func _on_RandomLeakTimer_timeout():
	var possible = []
	if(breastsLeaking):
		possible.append(0)
	if(pussyLeaking):
		possible.append(1)
	if(anusLeaking):
		possible.append(2)
	
	var randomPicked = RNG.pick(possible)
	if(randomPicked != null && !isOnlyPenis):
		if(randomPicked == 0):
			nipplesParticles.emitting = true
		if(randomPicked == 1):
			pussyParticles.emitting = true
		if(randomPicked == 2):
			anusParticles.emitting = true
	
	var waitTime = 25.0
	if(breastsLeaking):
		waitTime -= 5.0
	if(pussyLeaking):
		waitTime -= 5.0
	if(anusLeaking):
		waitTime -= 5.0
	
	$RandomLeakTimer.start(RNG.randf_range(waitTime * 0.5, waitTime * 1.5))

func setCockTemporaryHard():
	var currentCockState = getFinalState("cock")
	if(currentCockState in ["caged", "condom"]):
		return
	
	setTemporaryState("cock", "")

func setCockTemporaryCondom():
	var currentCockState = getFinalState("cock")
	if(currentCockState in ["caged", "condom"]):
		return
	
	setTemporaryState("cock", "condom")

func setCockTemporaryCaged():
	#var currentCockState = getFinalState("cock")
	#if(currentCockState in ["caged", "condom"]):
	#	return
	
	setTemporaryState("cock", "caged")

func applyBodyState(bodystate):
	if(bodystate == null):
		bodystate = {}
	
	var shouldForceShowPenis = bodystate.has("showPenis") && bodystate["showPenis"]
	var shouldExposeChest = bodystate.has("exposedChest") && bodystate["exposedChest"]
	var shouldExposeCrotch = bodystate.has("exposedCrotch") && bodystate["exposedCrotch"]
	var shouldBeNaked = bodystate.has("naked") && bodystate["naked"]
	var shouldShowUnderwear = bodystate.has("underwear") && bodystate["underwear"]
	var shouldBeHard = bodystate.has("hard") && bodystate["hard"]
	var shouldBeCaged = bodystate.has("caged") && bodystate["caged"]
	var shouldBeCondom = bodystate.has("condom") && bodystate["condom"]
	#var shouldLookLeft = bodystate.has("lookLeft") && bodystate["lookLeft"]
	
	var exposeBodyparts = []
	if(shouldExposeChest || shouldBeNaked):
		exposeBodyparts.append_array([
			BodypartSlot.Breasts,
		])
	if(shouldExposeCrotch || shouldBeNaked):
		exposeBodyparts.append_array([
			BodypartSlot.Penis,
			BodypartSlot.Vagina,
			BodypartSlot.Anus,
		])
	if(shouldBeNaked):
		exposeBodyparts.append_array([
			BodypartSlot.Body,
			BodypartSlot.Arms,
			BodypartSlot.Legs,
		])
	if(shouldShowUnderwear):
		exposeBodyparts.append_array([
			BodypartSlot.Body,
		])
	
	if(isOnlyPenis):
		exposeBodyparts = [BodypartSlot.Penis]
	
	setExposedBodyparts(exposeBodyparts)
	
	if(shouldBeHard):
		setCockTemporaryHard()
		
	if(shouldBeCaged):
		setCockTemporaryCaged()
	
	if(shouldBeCondom):
		setCockTemporaryCondom()
	
	if(shouldForceShowPenis):
		forceSlotToBeVisible(BodypartSlot.Penis)
	
	var newChains = []
	if(bodystate.has("chains")):
		newChains = bodystate["chains"]
	if(bodystate.has("leashedBy") && bodystate["leashedBy"] != null && bodystate["leashedBy"] != ""):
		newChains.append(["normal", "neck", "npc", bodystate["leashedBy"], "hand.L"])
	sceneChains = newChains
	
	checkChains()

func checkChains():
	if(!OPTIONS.shouldSpawnChains()):
		return
	
	var finalChains = selfChains + sceneChains
	
	if(rememberedChains != finalChains):
		rememberedChains = finalChains
		
		updateChains()

var normalChainScene = preload("res://Player/Player3D/Chains/NormalChain.tscn")
var shortChainScene = preload("res://Player/Player3D/Chains/ShortChain.tscn")
var hoseChainScene = preload("res://Player/Player3D/Chains/HoseChain.tscn")
var hoseShortChainScene = preload("res://Player/Player3D/Chains/HoseChainShort.tscn")
				
func createChainScene(chainType:String):
	if(chainType == "normal"):
		return normalChainScene.instance()
	if(chainType == "short"):
		return shortChainScene.instance()
	if(chainType == "hose"):
		return hoseChainScene.instance()
	if(chainType == "hoseshort"):
		return hoseShortChainScene.instance()
	if(chainType.ends_with(".tscn")):
		return GlobalRegistry.instanceCached(chainType)
	
	return normalChainScene.instance()

func updateChains():
	for chainObject in chainObjects:
		if(chainObject != null && is_instance_valid(chainObject)):
			chainObject.queue_free()
	chainObjects.clear()

	if(!OPTIONS.shouldSpawnChains()):
		return

	if(!get_parent().has_method("getDolls")):
		return
	
	for chainInfo in rememberedChains:
		var zoneID = chainInfo[1]
		if(!dollAttachmentZones.has(zoneID)):
			continue
		var attachPointObjects = dollAttachmentZones[zoneID]
		
		var targetObjects = []
		
		var chainType = chainInfo[2]
		if(chainType == "npc"):
			var otherDolls = get_parent().getDolls()
			
			for otherDoll in otherDolls:
				var otherDollID = otherDoll.savedCharacterID
				if(!(otherDollID is String)):
					otherDollID = otherDollID.getID()
				if(otherDollID == chainInfo[3]):
					var otherZoneID = chainInfo[4]
					if(otherDoll.dollAttachmentZones.has(otherZoneID)):
						targetObjects = otherDoll.dollAttachmentZones[otherZoneID]
					break
		if(chainType == "self"):
			var otherZoneID = chainInfo[3]
			if(dollAttachmentZones.has(otherZoneID)):
				targetObjects = dollAttachmentZones[otherZoneID]
		if(chainType == "scene"):
			if(!get_parent().has_method("getChainPoint")):
				continue
			
			var points = get_parent().getChainPoint(chainInfo[3])
			if(points == null):
				continue
			if(!(points is Array)):
				points = [points]
			
			targetObjects = points
		
		for attachPointObject in attachPointObjects:
			for targetPointObject in targetObjects:
				var newChain = createChainScene(chainInfo[0])
				newChain.anchor = targetPointObject
				if(targetPointObject is DollAttachmentZone):
					newChain.anchorOffset = targetPointObject.chainOffset
				newChain.transform.origin = attachPointObject.chainOffset
				#newChain.offset = attachPointObject.chainOffset
				attachPointObject.add_child(newChain)
				chainObjects.append(newChain)

func calculateDifferences():
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	
	var result = {}
	var ini = Transform.IDENTITY
	
	for boneID in range(skeleton.get_bone_count()):
		var boneName = skeleton.get_bone_name(boneID)
		
		var pose:Transform = skeleton.get_bone_pose(boneID)
		if(pose != ini):
			var stuff = {}
			if(pose.origin != ini.origin && pose.origin.length()>0.001):
				stuff["p"] = [Util.roundF(pose.origin.x, 2), Util.roundF(pose.origin.y, 2), Util.roundF(pose.origin.z, 2)]
			if(pose.basis.get_rotation_quat() != ini.basis.get_rotation_quat()):
				var euler = pose.basis.get_euler()
				stuff["a"] = [Util.roundF(euler.x, 2), Util.roundF(euler.y, 2), Util.roundF(euler.z, 2)]
			#print(pose)
			result[boneName] = stuff
	
	return result

func applyData(data):
	var skeleton:Skeleton = getDollSkeleton().getSkeleton()
	
	var ini:Transform = Transform.IDENTITY
	
	for boneIndex in range(skeleton.get_bone_count()):
		var theboneID = skeleton.get_bone_name(boneIndex)
		if(data.has(theboneID)):
			var boneData = data[theboneID]
			var a
			if(boneData.has("a")):
				a = boneData["a"]
			else:
				a = Vector3(0.0,0.0,0.0)
			var p
			if(boneData.has("p")):
				p = boneData["p"]
			else:
				p = Vector3(0.0,0.0,0.0)
			var b:Basis = Basis(Vector3(a[0], a[1], a[2]))
			var t:Transform = Transform(b, Vector3(p[0], p[1], p[2]))
			skeleton.set_bone_pose(boneIndex, t)
		else:
			skeleton.set_bone_pose(boneIndex, ini)

func clearSkinData():
	skinData.clear()

func setSkinData(thedata):
	skinData = thedata

func getSkinDataByID(theID):
	if(!skinData.has(theID)):
		return {}
	
	return skinData[theID]
