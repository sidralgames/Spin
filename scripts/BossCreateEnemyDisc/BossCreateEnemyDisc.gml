// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossCreateEnemyDisc()
{
	if (global.playing = true)
	{
		contEnemies --;
	
		if (contEnemies <= 0)
		{
			contEnemies = random_range(1000,1200);
			
			enemy = instance_create_layer(x+choose(75, -75),y+choose(75, -75),"Enemies", o_alert);
			enemy.enemyToCreate = o_enemy;
		}
	}
}