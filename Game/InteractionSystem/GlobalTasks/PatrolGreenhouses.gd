extends GlobalTask

var patrolZone:String = WorldZone.Greenhouses

func _init():
	id = "PatrolGreenhouses"
	goalID = InteractionGoal.Patrol

func getMaxAssigned() -> int:
	return 3

func canDoTask(_pawn:CharacterPawn) -> bool:
	return _pawn.isGuard()

func configureGoal(_pawn:CharacterPawn, _goal):
	_goal.zone = patrolZone