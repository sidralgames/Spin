/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
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



_hpTime --;

direction = anglePlayer;
image_angle = direction;

if (_hp <= 0) || (_hpTime <= 0)
{
	if (_hp <= 0)
	{
		screenShake(1,10,1);
		gamepad_set_vibration(0,0.2,0.2);
		instance_destroy();
	}
	else
	{
		o_vinilo.bullet = self;
		o_vinilo.spinCreateHole = true;
		o_vinilo.angleHole = point_direction(o_boss.x, o_boss.y,x,y)
		o_vinilo.distHole = point_distance(x,y,o_boss.x, o_boss.y)
		o_vinilo.holeImage = irandom(2);
		o_vinilo.scaleRoto = random_range(0.3,0.4);
		
		screenShake(2,15,1);
		gamepad_set_vibration(0,0.2,0.2);
		instance_destroy();
	}	
}
else
{
	switch(image_index)
	{
		case 0:
		{
			part_particles_create(global.misilYellowPart_sys, x + lengthdir_x(15, direction - 180), y + lengthdir_y(15, direction - 180), global.misilYellowPart , 1)
		}
		break;
		case 1:
		{
			part_particles_create(global.misilBluePart_sys, x + lengthdir_x(15, direction - 180), y + lengthdir_y(15, direction - 180), global.misilBluePart , 1)
		}
		break;
		case 2:
		{
			part_particles_create(global.misilGreenPart_sys, x + lengthdir_x(15, direction - 180), y + lengthdir_y(15, direction - 180), global.misilGreenPart , 1)
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
