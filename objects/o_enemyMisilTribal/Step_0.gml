/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

direction = anglePlayer;
image_angle = direction;

if (setMisil = false)
{
	switch(image_index)
	{
		case 0:
		{
			_hp = 5;
			_hpTime = 180;
			initialSpeed = random_range(1.5,1.75)
			precision = random_range(1.2,1.75)
		}
		break;
	
		case 1:
		{
			_hp = 4;
			_hpTime = 180;
			initialSpeed = random_range(1.25,1.5)
			precision = random_range(1,1.25)
		}
		break;
	
		case 2:
		{
			_hp = 3;
			_hpTime = 180;
			initialSpeed = random_range(1,1.25)
			precision = random_range(0.75,1)
		}
		break;	
	}
	
	setMisil = true;
}

if (scaled = false)
{
	scale = lerp(scale, 1, 0.07)
	
	if (scale > 0.9)
	{
		scale = 1;
		scaled = true
	}
}

image_xscale = scale;
image_yscale = scale;

_hpTime --;



if (_hp <= 0) || (_hpTime <= 0)
{
	screenShake(1,10,1);
	gamepad_set_vibration(0,0.2,0.2);
	if (killedByPlayer)
	{
		global.bombsDestroyed +=1;
	}
	instance_destroy();
}
else
{
	switch(o_boss.spriteBoss)
	{
		case s_bossTribal:
		{
			part_particles_create(global.misilTribalPart_sys, x, y, global.misilTribalPart , 1)
		}
		break;
		case s_bossTribal_B:
		{
			part_particles_create(global.misilTribalPart_B_sys, x, y, global.misilTribalPart_B , 1)
		}
		break;
		
	}
	//part_particles_create(global.misilYellowPart_sys, x + lengthdir_x(9, direction - 200), y + lengthdir_y(9, direction - 200), global.misilYellowPart , 1)
}


if instance_exists(o_player)
{
	var a = point_direction(x,y,o_player.x, o_player.y)
	anglePlayer += sign(dsin(a - anglePlayer)) * (precision * min(1, global.relativeSpeed+0.2));
}

if (global.relativeSpeed > 1.1)
{
	speed = initialSpeed * 1.1;
}
else
{
	speed = initialSpeed * global.relativeSpeed
}
