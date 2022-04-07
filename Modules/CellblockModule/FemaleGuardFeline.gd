extends Character

func _init():
	id = "femaleguard_feline"
	
	npcArmor = {
		DamageType.Physical: 10,
	}
	npcLevel = 2
	npcLustInterests = {
		InterestTopic.FeminineBody: Interest.ReallyLikes,
		InterestTopic.AndroBody: Interest.Hates,
		InterestTopic.SlimBody: Interest.KindaLikes,
		InterestTopic.BigBreasts: Interest.ReallyLikes,
		InterestTopic.MediumBreasts: Interest.Loves,
		InterestTopic.SmallBreasts: Interest.KindaLikes,
		InterestTopic.NoBreasts: Interest.SlightlyDislikes,
		InterestTopic.HasCockOnly: Interest.ReallyDislikes,
		InterestTopic.HasVaginaOnly: Interest.ReallyLikes,
		InterestTopic.HasVaginaAndCock: Interest.Loves,
		InterestTopic.SmallCock: Interest.KindaLikes,
		InterestTopic.BigCock: Interest.Likes,
		InterestTopic.StuffedPussyOrAss: Interest.Loves,
		InterestTopic.StuffedPussy: Interest.Loves,
		InterestTopic.CoveredInCum: Interest.Likes,
		InterestTopic.CoveredInLotsOfCum: Interest.Loves,
		InterestTopic.StuffedThroat: Interest.Likes,
		InterestTopic.ThickButt: Interest.Loves,
		InterestTopic.AverageButt: Interest.KindaLikes,
		InterestTopic.SlimButt: Interest.SlightlyDislikes,
	}
	
func _getName():
	return "Female guard"

func getGender():
	return Character.Gender.Female
	
func getSmallDescription() -> String:
	return "A tall feline wearing a guard uniform."

func getSpecies():
	return ["feline"]

func _getAttacks():
	return ["stunbatonAttack", "stunbatonOverchargeAttack", "biteattack", "shoveattack", "trygetupattack"]

func getFightIntro(_battleName):
	return "The guard prepares to fight"
	
func getLoot(_battleName):
	return {"credits": 1}
