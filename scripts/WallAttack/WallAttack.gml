// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function WallAttack(_minWalls, _maxWalls, _rate, _offset)
{
	if (alarm[1] <=0) && instance_exists(o_player)
	{
		anticipatedOffset = o_player.totalPush*30;
		for (var i=0; i<totWall; i++)
		{
			dir = ((360 / totWall) * i) + offset;
			bullet = instance_create_layer(x + lengthdir_x(43, dir),y + lengthdir_y(43, dir),"Bullets", o_wall);
			bullet.speed = random_range(0.7, 0.8);
			bullet.initialSpeed = random_range(0.7, 0.8);
			bullet.direction = dir;
			bullet.image_angle = dir-90;
			bullet._hpush = hspeed;
			bullet._vpush = vspeed;
			destroy = irandom(3)
			if (destroy = 0)
			{
				instance_destroy(bullet)
			}
			else
			{
				scale = 1.15;
			}
		
		}
		
		totWall = irandom_range(_minWalls,_maxWalls);
		offset = offset + _offset;
		alarm[1] = _rate;
	}
}