// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckRunningAgainstSpin()
{
	//---- ---//
	if (achievementCheck.alias = "AgainstSpin")
	{
		if (global.runningAgainstSpinmilisecsBest/60) > 240
		{
			achievementCheck.unlocked = 1;
		}
	}
}