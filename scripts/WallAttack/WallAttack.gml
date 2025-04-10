// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function WallAttack(_minWalls, _maxWalls, _rate, _offset, _destroyRate)
{
	if (alarm[1] <=0) && instance_exists(o_player)
	{
		anticipatedOffset = o_player.totalPush*30;
		for (var i=0; i<totWall; i++)
		{
			dir = ((360 / totWall) * i) + offset;
			wall = instance_create_layer(x + lengthdir_x(43, dir),y + lengthdir_y(43, dir),"Walls", o_wall);
			wall.speed = random_range(0.75, 0.8);
			wall.initialSpeed = random_range(0.75, 0.8);
			wall.direction = dir;
			wall.image_angle = dir-90;
			wall._hpush = hspeed;
			wall._vpush = vspeed;
			destroy = irandom(_destroyRate)
			if (destroy = _destroyRate)
			{
				instance_destroy(wall)
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