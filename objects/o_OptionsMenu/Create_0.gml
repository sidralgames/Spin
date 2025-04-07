/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
selected = 0;
_visible = true;
creditsShowing = false;
factor = 0.08;

initialCRT = 300;
//initialTut = 170;
initialScreen = 330;
initialCredits = 360;
initialBack = 390;
contCred = 20;
initialConfirm = 290;
initialBackCol = 400;
if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeON;
}
else
{
	spriteShake = s_screenshakeOFF;
}

initialOptions = 270;