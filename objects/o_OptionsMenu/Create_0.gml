/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

initialFlechaL= 203;
initialFlechaR= 203;

selectedPage = 0;
nextPageAch = round(global.totalNumberOfAchievements/ 2);
achievementPages = 2;
selected = 0;
_visible = true;
creditsShowing = false;
factor = 0.08;
achievementsShowing = false;
initialCRT = 300;
//initialTut = 170;
initialAch = 300;
initialAchT = initialAch
initialAchDesc = 390
initialScreen = 330;
initialCredits = 360;
initialBack = 390;
contCred = 20;
initialConfirm = 290;
initialBackCol = 400;
selectedA = 0;
if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeON;
}
else
{
	spriteShake = s_screenshakeOFF;
}

if (global.CRTIsOn)
{
	spriteCRT = s_CRTON;
}
else
{
	spriteCRT = s_CRTOFF
}
initialOptions = 270;