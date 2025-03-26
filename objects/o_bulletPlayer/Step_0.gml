/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//---- DOBLE SHOT UPGRADE ---//
if (global.dobleShotUpgrade)
{
	if (cancreateDoble)
	{
		if ( global.dobleShotOdds = irandom(global.dobleShotOdds) )
		{
			bulletDoble = instance_create_layer(x,y,"Bullets", o_bulletPlayer)
			bulletDoble.initialSpeed = initialSpeed;
			bulletDoble.cancreateDoble = false;
			bulletDoble.direction = direction+10
			direction = direction-10;
		}
	
		cancreateDoble = false;
	}
}

_hp --;

if (_hp <= 0)
{
	instance_destroy();
}
else
{
	part_particles_create(global.balaP_sys, x, y, global.balaP , 2)
}

if (global.relativeSpeed > 1.1)
{
	speed = initialSpeed * 1.1
}
else
{
	//initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
}


//---- SMART UPGRADE ---//
if (global.smartBulletUpgrade = true)
{
	nextBoss = instance_nearest(x,y,o_boss);
	if (instance_exists(nextBoss)) && (point_distance(x,y, nextBoss.x, nextBoss.y) < 105)
	{
		var a = point_direction(x,y, nextBoss.x, nextBoss.y);
		direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
	}
}
