// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckAchievements()
{
	//----- CHECK UNLOCKED ACHIEVEMENTS ---//
	for (var j=0; j<global.totalNumberOfAchievements; j++)
	{	
		achievementCheck = ds_map_find_value(global.achievementList, j);
		
		//---- KILLS RELATED ---//
		CheckAllKills();
		
		//--- BULLET RELATED ----//
		CheckBulletsAch();
	
		//--- ALL B-SIDES ----//
		CheckAllBSides();
		
		//--- UPGRADES PICKED ----//
		CheckWellPrepared();
		
		CheckUntouchable();
		
		CheckCompletionist();
	}
}