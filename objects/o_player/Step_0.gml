/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;

key_x = keyboard_check(ord("X")) || mouse_check_button(mb_left);

key_r2 = gamepad_button_check(0, gp_shoulderrb)

if (key_r2)
{
	global.relativeSpeed = lerp(global.relativeSpeed, 0.2, 0.03)
}
else
{
	global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05)
	
	if (global.relativeSpeed > 0.85)
	{
		global.relativeSpeed = 1;
	}
}

//MovePlayer()



//if (y > room_height/2)
//{
//	dirV = key_down - key_up;
//}
//else
//{
//	dirV =  key_up - key_down;
//}

//r = clamp(r, 50, 170);



bossPush = bossSpin;

//_hpush += dirH * global.walkAccelerationH;
//_vpush += dirV * global.walkAccelerationV;

totalPush = bossPush;

totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);



if (theta >= 360)
{
	theta -= 360;
}





if (key_x)
{
	if (alarm[0] <= 0)
	{
		dir = point_direction(x,y,mouse_x, mouse_y);
		bullet = instance_create_layer(x,y,"BulletsPlayer", o_bulletPlayer);
		bullet.speed = 3;
		bullet.direction = dir;
		alarm[0] = fireRate;
	}
	
}

if (gamepad_button_check(0,gp_shoulderr))
{
	var haxis = gamepad_axis_value(0, gp_axisrh);
	var vaxis = gamepad_axis_value(0, gp_axisrv);
	directionShoot = point_direction(0, 0, haxis, vaxis);
	
	if (alarm[0] <= 0)
	{
		bullet = instance_create_layer(x,y,"BulletsPlayer", o_bulletPlayer);
		bullet.speed = 3;
		bullet.direction = directionShoot;
		alarm[0] = fireRate;
	}
	
}



if (_hp <= 0)
{
	instance_destroy();
}


//if (place_meeting(x+_hpush*1.5,y,o_wall))
//{
//		_hpush = -_hpush * bnc;
//		alarm[3] = 5;
//}

//if (place_meeting(x,y+_vpush*1.5,o_wall))
//{
//	_vpush = -_vpush * bnc;
//	alarm[3] = 5;
//}

//nextWall = instance_nearest(x,y,o_wall)

//if (collision_circle(x,y,15,nextWall, true, true))
//{
//	dir = point_direction(nextWall.x, nextWall.y,x,y);
//	alarm[3] = 5;
//	_hpush += nextWall.hspeed*1.2
//	_vpush += nextWall.vspeed*1.2
//}



//x = cx + lengthdir_x(r,theta) * global.relativeSpeed;
//y = cy + lengthdir_y(r,theta) * global.relativeSpeed;



//if (alarm[3] < 0)
//{
	
//	x = cx + lengthdir_x(r, theta) 
//	y = cy + lengthdir_y(r, theta) 
//}

var haxis = gamepad_axis_value(0, gp_axislh);
var vaxis = gamepad_axis_value(0, gp_axislv);
direction = point_direction(0, 0, haxis, vaxis);


if (gamepad_axis_value(0, gp_axislh) > 0.1 || gamepad_axis_value(0, gp_axislh) < -0.1 || 
	gamepad_axis_value(0, gp_axislv) > 0.1 || gamepad_axis_value(0, gp_axislv) < -0.1 )
{
	r = point_distance(x,y,room_width/2, room_height/2)
	
	x += hspeed* global.relativeSpeed;
	y += vspeed* global.relativeSpeed;
	
	theta = point_direction(room_width/2, room_height/2, x, y);
	
	point_direction0 = point_direction(room_width/2, room_height/2, xprevious, yprevious);
	point_direction1 = point_direction(room_width/2, room_height/2, x, y);
	
	if point_direction1 > point_direction0
	{
		speed = point_distance(0 ,0, haxis, vaxis) * _speed - abs(bossSpin/1.2); // direccionContraria
	}
	else
	{
		speed = point_distance(0 ,0, haxis, vaxis) * _speed + abs(bossSpin/4);
	}
	

	//if (y > room_height/2)
	//{
	//	if x < xprevious
	//	{
	//		speed = point_distance(0 ,0, haxis, vaxis) * 2;
	//	}
	//	else if x > xprevious
	//	{	
	//		speed = point_distance(0 ,0, haxis, vaxis) * 1;
	//	}
	//	else
	//	{
	//		speed = point_distance(0 ,0, haxis, vaxis) * 1;
	//	}
	//}
	//else
	//{
	//	if x < xprevious
	//	{
	//		speed = point_distance(0 ,0, haxis, vaxis) * 1;
	//	}
	//	else if x > xprevious
	//	{
	//		speed = point_distance(0 ,0, haxis, vaxis) * 2;
	//	}
	//	else
	//	{
	//		speed = point_distance(0 ,0, haxis, vaxis) * 1;
	//	}
	//}
}
else
{
	
theta += totalPush * global.relativeSpeed;


x = cx + lengthdir_x(r, theta) 
y = cy + lengthdir_y(r, theta)


}