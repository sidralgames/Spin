/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

checkAch = false;
cableOk = false;
adapterOk  = false;
shieldOk  = false;
toolBoxOk  = false;
slowMoOk  = false;
dobleShotOk = false;
shotGunOk = false;
wingsOk = false;
haloOk = false;
bsidesInGame = 0;
bsidesUnlocked = 0;
initialGameOver = 160;
factor = 0.05;
numBossesDefeated = 0;
rot = 0;
audio_play_sound_on(global.audioEmitter,snd_gameOver,false, 50);

for (var i = 0; i < global.totalNumberOfVinyls; i++)
{
	bossesDefeated = ds_map_find_value(global.collectionList, i);
	if (bossesDefeated.defeatedInRun = 1)
	{
		numBossesDefeated +=1;
	}
}

getBossDeath = false;


selected = 0;
_visible = true;

factor = 0.08;

initialRetry = 300;
//initialTut = 170;
initialMainMenu = 330;
//initialStat = 280;
global.slowed = false;
global.fwd = false;
pitch = 0;

