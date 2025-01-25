/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
bossPush = bossSpin * min(1.5, global.relativeSpeed);
image_angle+=spinSpeed;
totalPush = bossPush;
totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);

if (theta <= 0)
{
	theta =+ 360;	
}
if (image_angle <= 0)
{
	image_angle =+ 360;	
}
if (image_angle >= 360)
{
	image_angle = 0;	
}

if (contCanChase >= 0) && (canChase = false)
{
	contCanChase--;
}
if (contCanChase <= 0)
{
	canChase = true;
}


enemyToBounce = collision_circle(x,y,4,o_enemy,false,true)
nextWall = instance_nearest(x,y,o_wall);
if collision_circle(x,y,10,nextWall,true,true)
{
	bounced = true;
	alarm[4] = 5;
}

if instance_exists(o_boss)
{
	if (place_meeting(x+hspeed*2.5,y,o_boss)) 
	{	
		newDir = point_direction(o_boss.x, o_boss.y, x, y)
		hspeed = -hspeed * bnc;
		alarm[3] = 15;
	}

	if (place_meeting(x,y+vspeed*2.5,o_boss))
	{
		newDir = point_direction(o_boss.x, o_boss.y, x, y)
		vspeed = -vspeed * bnc;
		alarm[3] = 15;
	}
}

if instance_exists(enemyToBounce)
{
	if (place_meeting(x+hspeed*2.5,y,enemyToBounce)) 
	{	
		newDir = point_direction(enemyToBounce.x, enemyToBounce.y, x, y)
		hspeed = -hspeed * bnc;
		alarm[3] = 15;
	}

	if (place_meeting(x,y+vspeed*2.5,enemyToBounce))
	{
		newDir = point_direction(enemyToBounce.x, enemyToBounce.y, x, y)
		vspeed = -vspeed * bnc;
		alarm[3] = 15;
	}
}	
			


r = point_distance(x,y,room_width/2, room_height/2);
theta = point_direction(room_width/2, room_height/2, x, y);

if instance_exists(o_player)
{
	distToPlayer = point_distance(x,y,o_player.x, o_player.y)
}

if (chasingPlayer = false) && (distToPlayer <= 180) && (alarm[3] <= 0) && (canChase)
{
	chasingPlayer = true;
}

if (chasingPlayer = true) && (distToPlayer >= 200)
{
	chasingPlayer = false;
}




if (chasingPlayer) && (alarm[3] <= 0) && (bounced = false)
{

	spinSpeed = lerp(spinSpeed, 10, 0.05)* global.relativeSpeed;
	x += hspeed* global.relativeSpeed;
	y += vspeed* global.relativeSpeed;
		
	if instance_exists(o_player)
	{
		
		
			direction = point_direction(x,y,o_player.x, o_player.y);
		
			point_directionPrev = point_direction(room_width/2, room_height/2, xprevious, yprevious);
			point_directionNow = point_direction(room_width/2, room_height/2, x, y);

			if (point_directionNow > point_directionPrev)
			{
				realspeed = lerp(realspeed, 1 * (_speed - abs(bossSpin/2 * global.relativeSpeed)), 0.1); // direccionContraria
			}
			else
			{
				realspeed = lerp(realspeed, 1 * (_speed + abs((bossSpin/4) * global.relativeSpeed)), 0.1);
			}
		
			speed = realspeed * min(1, global.relativeSpeed);
		
	}
	else
	{
		speed = lerp(speed, 0, 0.05);
	}		
}

if (chasingPlayer = false) 
{
	spinSpeed = lerp(spinSpeed, global.vinylSpin, 0.05) * global.relativeSpeed;
	speed = lerp(speed, 0, 0.05);
	theta += totalPush;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)
	
}

if (alarm[3] > 0) 
{
	spinSpeed = lerp(spinSpeed, 10, 0.05);
	contCanChase = 60;
	canChase = false;
	direction = newDir + random_range(-30,30);
	speed = 1.2;
	
	if !collision_circle(x,y,20,o_boss,true,true) || !collision_circle(x,y,20,enemyToBounce,true,true)
	{
		bounced = false;
		chasingPlayer = false
	}
	else
	{
		alarm[3] = 4;
	}
}

if (bounced)
{
	spinSpeed = lerp(spinSpeed, 10, 0.05);
	if (alarm[4] > 0)
	{
		if instance_exists(nextWall)
		{
			direction = point_direction(nextWall.x, nextWall.y, x, y);
		}
				
		point_direction0 = point_direction(room_width/2, room_height/2, xprevious, yprevious);
		point_direction1 = point_direction(room_width/2, room_height/2, x, y);
	
		if point_direction1 > point_direction0
		{
			realspeed = lerp(realspeed, 1 * (_speed - abs(bossSpin * global.relativeSpeed)), 0.1); // direccionContraria
		}
		else
		{
			realspeed = lerp(realspeed, 1 * (_speed + abs((bossSpin/4) * global.relativeSpeed)), 0.1);
		}
		
		speed = realspeed * min(1, global.relativeSpeed);
			
	}
	else
	{
		speed = 0;
		theta += totalPush;
		x = cx + lengthdir_x(r, theta) 
		y = cy + lengthdir_y(r, theta)
				
		if !collision_circle(x,y,20,nextWall,true,true)
		{
			bounced = false;
		}
		else
		{
			alarm[4] = 4;
		}
	}
}



if instance_exists(o_vinilo)
{
	if (!collision_circle(x,y,4,o_vinilo,true,true))
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
	instance_destroy();
}

contBomb --;

if (contBomb <= 0) && (chasingPlayer) && (dying = false)
{
	bomb = instance_create_layer(x + lengthdir_x(5, direction - 180 ),y+ lengthdir_y(5, direction - 180 ),"BulletsDown",o_bulletBomb);
	bomb.createHole = true;
	bomb.initialSpeed = 0.25;
	bomb.direction = direction - 180;
	contBomb = random_range(120,300);
}