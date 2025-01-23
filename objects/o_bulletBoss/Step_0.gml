/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_hp --;

bossPush = bossSpin * min(1.5, global.relativeSpeed);

totalPush = bossPush;
totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);



r = point_distance(x,y,room_width/2, room_height/2);
theta = point_direction(room_width/2, room_height/2, x, y);

if (theta <= 0)
{
	theta =+ 360;	
}


if (_hp <= 0)
{
	instance_destroy();
}
else
{
	part_particles_create(global.balaPBoss_sys, x, y, global.balaPBoss , 2)
}




if global.relativeSpeed> 1.4
{
	speed = initialSpeed * 1.4
}
else
{
	//initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
	
}

timeToExplode --;

if (dying = false) && (speed <= 0.5) && (timeToExplode <= 0)
{
	speed = 0;
	image_xscale+=0.1;
	image_yscale+=0.1;
}

if (image_xscale >= scaleExplo)
{
	_hp = 0;
	if (createHole)
	{
		if instance_exists(o_boss) && instance_exists(o_vinilo)
		{
			o_vinilo.bullet = self;
			o_vinilo.spinCreateHole = true;
			o_vinilo.angleHole = point_direction(o_boss.x, o_boss.y,x,y)
			o_vinilo.distHole = point_distance(x,y,o_boss.x, o_boss.y)
			o_vinilo.holeImage = irandom(2)
		}
	}
}


if (!collision_circle(x,y,3,o_vinilo,true,true)) && (speed <= 0.25) && instance_exists(o_vinilo)
{
	contDie --;
	if (contDie <=0)
	{
		dying = true;
		depth = o_vinilo.depth+3
	}
}
else
{
	contDie = 5;
}


if (speed <=0.25)
{
	theta += totalPush * global.relativeSpeed;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)
}



if (dying = true)
{
	if (scaleReset = false)
	{
		image_xscale = 1;
		image_yscale = 1;
		scaleReset = true;
	}

	image_xscale -= 0.01;
	image_yscale -= 0.01;	

	if (image_xscale <= 0.1)
	{
		instance_destroy();
	}
}