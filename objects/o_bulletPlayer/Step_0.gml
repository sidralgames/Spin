/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (damageSet = false)
{
	bulletDamage = (baseDamage + global.superShot) * global.damageAuxUpgrade;
	
	if (bulletDamage > 75)
	{
		canUnlockAch = true;
	}
	
	damageSet = true;
}



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
	if (alarm[0] <= 0)
	{
		if sprite_index = s_bulletPlayerLucky
		{
			part_particles_create(global.balaPLucky_sys, x, y, global.balaPLucky , 1)
		}
		else
		{
			part_particles_create(global.balaP_sys, x, y, global.balaP , 1)
		}
		
		alarm[0] = 1;
	}
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
