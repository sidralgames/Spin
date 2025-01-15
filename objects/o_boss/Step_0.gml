/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_angle-=.5*global.relativeSpeed
if (_hp <= 0)
{
	instance_destroy();
}


if (alarm[0] <= 0) && instance_exists(o_player)
{
	anticipatedOffset = 40;
	
	fireRate = random_range(100,200);
	dir = point_direction(x,y,o_player.x, o_player.y) + random_range(-30,30)
	bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
	bullet.speed = random_range(1.8,3);
	bullet.initialSpeed = bullet.speed
	bullet.direction = dir;
	alarm[0] = fireRate;
}



if (alarm[1] <=0) && instance_exists(o_player)
{
	anticipatedOffset = o_player.totalPush*30;
	for (var i=0; i<totWall; i++)
	{
		dir = ((360 / totWall) * i) + offset;
		bullet = instance_create_layer(x + lengthdir_x(40, dir),y + lengthdir_y(40, dir),"Bullets", o_wall);
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
		
	}
	totWall = irandom_range(1,3);
	offset = offset + 35;
	alarm[1] = choose(25 / global.relativeSpeed, 50 / global.relativeSpeed)
}


if (needleAttack) && instance_exists(o_player)
{
	for (var i=0; i<12; i++)
	{
		bullet = instance_create_layer(x,y,"Bullets", o_bulletBoss);
		bullet.speed = 2;
		bullet.initialSpeed = 2;
		bullet.direction = (360 / 12) *i;	
	}
	needleAttack = false;
	
}
	