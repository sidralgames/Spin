/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (set = false)
{
	switch(sprite_index)
	{
		case s_miniDemonEnemy:
		{
			_hp = 3;
			veloSpin = 1;
		}break;
	
		case s_miniDemonEnemy_B:
		{
			_hp = 6;
			veloSpin = 1.5;
			
		}break;
	}
	
	set = true;
}


bossSpin = global.vinylSpin;
bossPush = bossSpin * min(1.5, global.relativeSpeed);

totalPush = bossPush*veloSpin;
totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);


if (image_index >=14) && (born = false)
{
	born = true;
	image_speed = 0.5;
	image_index = 3;
}

if (born = true) && (image_index >=14)
{
	image_index = 3;
}



if (theta <= 0)
{
	theta =+ 360;	
}

//current += dir;
//if(current >= _max){
//    current = _max;
//    dir *= -1;
//}
//else if(current <= _min){
//    current = _min;
//    dir *= -1;
//}
r = point_distance(x,y,room_width/2, room_height/2);
theta = point_direction(room_width/2, room_height/2, x, y);

theta += totalPush;

x = cx + lengthdir_x(r, theta) 
y = cy + lengthdir_y(r, theta)
	

if instance_exists(o_vinilo)
{
	if (!collision_circle(x,y,5,o_vinilo,true,true))
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
}
else
{
	_hp = 0;
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
	exploEnemy = instance_create_layer(x+lengthdir_x(5,direction - 180),y+lengthdir_y(5,direction - 180),"Bullets", o_explosion);
	exploEnemy.image_xscale = 0.2;
	exploEnemy.image_yscale = 0.2;
	exploEnemy.image_speed = 0.9;
	exploEnemy.sprite_index = s_exploBlue;
	
	if (killedByPlayer)
	{
		global.enemiesKilled +=1;
	}
	
	instance_destroy();
}

