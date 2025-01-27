/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
initialGameOver = 160;
factor = 0.05;
numBossesDefeated = 0;
rot = 0;

for (var i = 0; i < global.totalNumberOfVinyls; i++)
{
	bossesDefeated = ds_map_find_value(global.collectionList, i);
	if (bossesDefeated.defeatedInRun = 1)
	{
		numBossesDefeated +=1;
	}
}

selected = 0;
_visible = true;

factor = 0.08;

initialRetry = 300;
//initialTut = 170;
initialMainMenu = 330;
//initialStat = 280;

