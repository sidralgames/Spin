/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
selected = 0;
_visible = true;

factor = 0.08;

initialCRT = 300;
//initialTut = 170;
initialScreen = 330;
//initialStat = 280;
initialBack = 360;

if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeON;
}
else
{
	spriteShake = s_screenshakeOFF;
}