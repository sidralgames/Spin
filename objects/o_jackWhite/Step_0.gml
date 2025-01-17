/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(o_cable)
{
	if (checkPos = false)
	{
		checkPos = true;
		r = point_distance(x,y,room_width/2, room_height/2);
		theta = point_direction(room_width/2, room_height/2, x, y);
		image_angle = 270 + theta;
	}
	
	
	if (cableFake = false)
	{
		CreateCableFake(c_white, o_jackWhite)
		cableFake = true;
	}
	image_xscale = 1.4;
	image_yscale = 1.4;
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
	
	theta += totalPush * global.relativeSpeed;
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta)

}
else
{
	image_angle = image_angle;
}
