// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function LoadGame()
{
	ini_open("SpinData.ini");
	
	//-------- Collection Bosses --------//
	global.bossNachoCollection = ini_read_real("bossesCollection","bossNacho", 0);
	global.bossDemonCollection = ini_read_real("bossesCollection","bossDemon", 0);
	global.bossTribalCollection = ini_read_real("bossesCollection","bossTribal", 0);
	
	ini_close();
}