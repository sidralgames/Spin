/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input()

if instance_exists(follow) && (global.playing = true) || (global.collection = true)
{
	var axisrh = gamepad_axis_value(0, gp_axisrh);
	var axisrv = gamepad_axis_value(0, gp_axisrv);
	
	//if instance_exists(o_crosshair) 
	//{
	//	x_point_to_move_camera_to= mean(follow.x,follow.x,follow.x,follow.x,follow.x+axisrh*160);
	//	y_point_to_move_camera_to= mean(follow.y,follow.y,follow.y,follow.y,follow.y+axisrv*160);
	//	x=lerp(x,x_point_to_move_camera_to,0.05);
	//	y=lerp(y,y_point_to_move_camera_to,0.05);
	//}
	//else
	//{
	
	
	
		//x_point_to_move_camera_to= room_width/2;
		//y_point_to_move_camera_to= room_height/2;
		//x=lerp(x,x_point_to_move_camera_to,0.05);
		//y=lerp(y,y_point_to_move_camera_to,0.05);
		
		if (global.collection)
		{
			if (o_MainMenu._moreStats = false)
			{
				x=lerp(x,room_width/2,0.1);
				y=lerp(y,room_height/2,0.1);
			}
			else
			{
				x=lerp(x,o_boss.x - 100 ,0.1);
				y=lerp(y,room_height/2,0.1);
			}
		}
		else
		{
			x=lerp(x,room_width/2,0.05);
			y=lerp(y,room_height/2,0.05);
		}

	//}
}
else if instance_exists(o_MainMenu)
{
		x_point_to_move_camera_to= room_width/2 - 320;
		y_point_to_move_camera_to= room_height/2;
		x=lerp(x,x_point_to_move_camera_to,0.05);
		y=lerp(y,y_point_to_move_camera_to,0.05);
}
if (global.screenshakeIsOn)
{
	//shake

	x = clamp(x, viewWidthHalf + buff, room_width - viewWidthHalf - buff);
	y = clamp(y, viewHeightHalf + buff, room_height - viewHeightHalf - buff);
	
	x+= random_range(-shakeRemain,shakeRemain);
	y+= random_range(-shakeRemain, shakeRemain);
	
	shakeRemain = max(0, lerp(shakeRemain, 0, 0.01) - ( (1/shakeLenght) * shakeMagnitude));
	angleRemain = max(0, lerp(angleRemain, 0, 0.01) - ( (1/shakeLenght) * angleMagnitude));
	
	camera_set_view_angle(cam, random_range(angleRemain, -angleRemain));
	
	if  instance_exists(follow)
	{
		if abs(follow._hpush > 0.2)	|| abs(follow._vpush > 0.2)
		{
			camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);		
		}
		else
		{
			camera_set_view_pos(cam,floor(x-viewWidthHalf),floor(y-viewHeightHalf));
		}
	}
	else
	{
		camera_set_view_pos(cam,floor(x-viewWidthHalf),floor(y-viewHeightHalf));
	}

}
else
{
	x = clamp(x, viewWidthHalf + buff, room_width - viewWidthHalf - buff);
	y = clamp(y, viewHeightHalf + buff, room_height - viewHeightHalf - buff);
	
	if  instance_exists(follow)
	{
		if abs(follow._hpush > 0.2)	|| abs(follow._vpush > 0.2)
		{
			camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);		
		}
		else
		{
			camera_set_view_pos(cam,floor(x-viewWidthHalf),floor(y-viewHeightHalf));
		}
	}
	else
	{
		camera_set_view_pos(cam,floor(x-viewWidthHalf),floor(y-viewHeightHalf));
	}
}





