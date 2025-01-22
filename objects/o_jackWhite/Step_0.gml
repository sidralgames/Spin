/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_cable)
{
	if instance_exists(o_vinilo)
	{
		if !collision_circle(x,y,5, o_vinilo,true,false)
		{
			dying = true;
		}
	}
	
	if (dying)
	{
		image_xscale -=0.1;
		image_yscale -=0.1;
		
		if image_xscale <= 0.1
		{
			instance_destroy(cableFake)
			instance_destroy()
		}
	}
	
	
	if (checkPos = false)
	{
		checkPos = true;
		image_xscale = 1.4;
		image_yscale = 1.4;
		r = point_distance(x,y,room_width/2, room_height/2);
		theta = point_direction(room_width/2, room_height/2, x, y);
		image_angle = 270 + theta;
	}
	
	
	if (cableFake = false)
	{
		CreateCableFake(c_white, o_jackWhite)
		cableFake = true;
	}
	
	
	contPick --;
	
	if (contPick > 0)
	{
		contAlpha --;
		if (contAlpha > 5)
		{
			image_alpha = 0.8;
		}
		else
		{
			image_alpha = 0.3;
		}
		
		if (contAlpha<=0)
		{
			contAlpha = 10
		}
	}
	
	if (contPick <=0)
	{
		canBePicked = true;
		image_alpha = 1;
	}
	
	bossPush = bossSpin * min(1.5, global.relativeSpeed);
	totalPush = bossPush;
	totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);
	
	image_angle += totalPush * global.relativeSpeed;
	
	if (theta <= 0)
	{
		theta =+ 360;	
	}
	
	//parCol = instance_nearest(x,y,o_parCollision)
	

	
	if (bounced)
	{
		bounced = false;
		direction = point_direction(parCol.x, parCol.y, x, y);
		image_angle = direction;
		speed = 0.25
		x+=hspeed;
		y+=vspeed;
	}


	if (alarm[0] <= 0)
	{
		
		theta += totalPush * global.relativeSpeed;
		x = cx + lengthdir_x(r, theta) 
		y = cy + lengthdir_y(r, theta)
	
		if collision_circle(x,y,2,parCol,true,true)
		{
			bounced = true;
			alarm[0] = 20;
		}
		else
		{
			speed = lerp(speed,0,0.02)
			if (speed <= 0.1)
			{
				speed = 0;
				bounced = false;
				r = point_distance(x,y,room_width/2, room_height/2);
				theta = point_direction(room_width/2, room_height/2, x, y);
			}
		
		}
	}
	else
	{
		if dying = false
		{
			r = point_distance(x,y,room_width/2, room_height/2);
			theta = point_direction(room_width/2, room_height/2, x, y);
			x+=hspeed;
			y+=vspeed;
		}
	}

}
else
{
	image_angle = image_angle;
}