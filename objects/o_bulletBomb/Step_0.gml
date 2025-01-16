/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (scaledFirst = false) && (image_xscale <=1)
{
	image_xscale+=0.05;
	image_yscale+=0.05;
	
	if image_xscale >=0.9
	{
		image_xscale = 1;
		image_yscale = 1;
	}
	
}
else
{
	scaledFirst = true;
}

bossPush = bossSpin * min(1.5, global.relativeSpeed);

totalPush = bossPush;
totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);



r = point_distance(x,y,room_width/2, room_height/2);
theta = point_direction(room_width/2, room_height/2, x, y);
image_angle = theta;

if (theta <= 0)
{
	theta =+ 360;	
}



if global.relativeSpeed> 1.4
{
	speed = initialSpeed * 1.4
}
else
{
	initialSpeed = lerp(initialSpeed ,0, 0.015)
	speed = initialSpeed * global.relativeSpeed
	
}

timeToExplode --;

if (timeToExplode <= timeToExplodeInitial/2) 
{
	image_speed = 0.5
}


exploding = (dying = false) && (speed <= 0.5) && (timeToExplode <= 0)

if (exploding)
{
	speed = 0;
	image_xscale+=0.1;
	image_yscale+=0.1;
}

if (image_xscale >= scaleExplo) || (_hp <=0)
{
	if (createHole)
	{
		if instance_exists(o_boss) && instance_exists(o_vinilo)
		{
			exploOrange = instance_create_layer(x, y, "BulletsDown", o_explosion);
			exploOrange.sprite_index = s_exploOrange;
			exploOrange.image_xscale = 0.4;
			exploOrange.image_yscale = 0.4;
			o_vinilo.bullet = self;
			o_vinilo.spinCreateHole = true;
			o_vinilo.angleHole = point_direction(o_boss.x, o_boss.y,x,y)
			o_vinilo.distHole = point_distance(x,y,o_boss.x, o_boss.y)
			o_vinilo.holeImage = irandom(2);
			if (_hp = 0)
			{
				o_vinilo.scaleRoto = random_range(0.1,0.2)
				screenShake(1,10,1);
			}
			else
			{
				o_vinilo.scaleRoto = random_range(0.35,0.7)
				screenShake(3,25,2);
				_hp = 0;
			}
		
		}
	}
}


if (!collision_circle(x,y,5,o_vinilo,true,true)) && (speed <= 0.25)
{
	contDie --;
	if (contDie <=0)
	{
		dying = true;
		depth = o_vinilo.depth+3
	}
}
else if (speed > 0.25)
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

if (_hp <= 0)
{
	instance_destroy();
	screenShake(2,10,1);
}
