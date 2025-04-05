/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_hpTime --;

direction = anglePlayer;
image_angle = direction;

if (_hp <= 0) || (_hpTime <= 0)
{
	if (_hp <= 0)
	{
		o_vinilo.scaleRoto = random_range(0.1,0.15)
		screenShake(1,10,1);
		gamepad_set_vibration(0,0.2,0.2);
		instance_destroy();
	}
	else
	{
		for (var i = 0; i<3; i++)
		{
			misil = instance_create_layer(x, y, "BulletsDown", o_enemyMisil)
			misil.anglePlayer = irandom(360)
			misil.image_index = irandom(2)
		}
		
		o_vinilo.bullet = self;
		o_vinilo.spinCreateHole = true;
		o_vinilo.angleHole = point_direction(o_boss.x, o_boss.y,x,y)
		o_vinilo.distHole = point_distance(x,y,o_boss.x, o_boss.y)
		o_vinilo.holeImage = irandom(2);
		
		o_vinilo.scaleRoto = random_range(0.4,0.5)
		screenShake(2,15,1);
		gamepad_set_vibration(0,0.2,0.2);
		instance_destroy();
	}	
	
}
else
{
	part_particles_create(global.misilRedPart_sys, x + lengthdir_x(15, direction - 180), y + lengthdir_y(15, direction - 180), global.misilRedPart , 1)
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
