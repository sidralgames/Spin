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



WallAttack(1,2,35);


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
	