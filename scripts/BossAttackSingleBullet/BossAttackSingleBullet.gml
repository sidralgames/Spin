// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossAttackSingleBullet(_fireRateSingleBullet, _dist, _angle)
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
	
		dir = point_direction(x,y,o_player.x, o_player.y);
						
		bullet1 = instance_create_layer(x + lengthdir_x(_dist, _angle),y + lengthdir_y(_dist, _angle),"Bullets", o_bulletBoss);
		bullet1.initialSpeed = random_range(2,2.5);
		bullet1.direction = anticipatedOffset + dir-10;
		alarm[0] = _fireRateSingleBullet;
	}
}