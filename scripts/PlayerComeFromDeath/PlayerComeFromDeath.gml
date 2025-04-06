// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerComeFromDeath()
{
	contComeFromDeath --;
	
	if (contComeFromDeath > 30)
	{
		instance_destroy(o_wall);
		//instance_destroy(o_bulletBoss);
		instance_destroy(o_bulletEnemyFather);
	}
	
	global.vinylSpin = lerp(global.vinylSpin, 0, 0.04);
	tocado = true;
	image_alpha = random_range(0.75,1);
	
	if (contComeFromDeath <= 0)
	{
		comeFromDeath = false;
		tocado = false;
		image_alpha = 1;
	}
}