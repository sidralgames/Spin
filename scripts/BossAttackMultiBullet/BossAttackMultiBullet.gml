// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackMultiBullet(_fireRateSingleBullet, _bullets)
{
	if (alarm[0] <= 0) && instance_exists(o_player)
	{
		if (o_player.runningAgainstDisc)
		{
			anticipatedOffset = 40;
		}
		else
		{
			anticipatedOffset = -30;
		}
						
		for (var i=0; i<_bullets; i++)
		{
							
			dir = point_direction(x,y,o_player.x, o_player.y)
			bullet1 = instance_create_layer(x,y,"Bullets", o_bulletBoss);
			bullet1.speed = random_range(2,2.5);
			bullet1.initialSpeed = bullet1.speed
			bullet1.direction = anticipatedOffset + dir-10*i;
		}
				
		alarm[0] = _fireRateSingleBullet;
	}
}