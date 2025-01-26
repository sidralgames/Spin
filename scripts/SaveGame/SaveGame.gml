// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function SaveGame()
{
	ini_open("SpinData.ini");
	
	//-------- BOSS COLLECTION --------//
	ini_write_real("bossesCollection","bossNacho", global.bossNachoCollection );
	ini_write_real("bossesCollection","bossDemon", global.bossDemonCollection );
	ini_write_real("bossesCollection","bossTribal", global.bossTribalCollection );
	
	ini_close();
}