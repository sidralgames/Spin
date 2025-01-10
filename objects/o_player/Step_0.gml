/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;

key_x = keyboard_check(ord("X")) || mouse_check_button(mb_left);

MovePlayer()

//var haxis = gamepad_axis_value(0, gp_axislh);
//var vaxis = gamepad_axis_value(0, gp_axislv);
//direction = point_direction(0, 0, haxis, vaxis);
//speed = point_distance(0 ,0, haxis, vaxis) * 5;

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

_hpush += dirH * global.walkAccelerationH;
_vpush += dirV * global.walkAccelerationV;
totalPush = bossPush - _hpush;



totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);



if (dirH > 0)
{
	spinDir = 1;
}

if (dirH < 0)
{
	spinDir = -1;
}

if (theta >= 360)
{
	theta -= 360;
}


 

if (dirV = 0)
{
	_vpush = lerp(_vpush, 0, 0.05);
}


if (dirH = 0)
{

	_hpush = lerp(_hpush, 0, 0.05);
	
	if (alarm[3] < 0)
	{
		theta += totalPush;
	}
	
}
else
{
	if (alarm[3] < 0)
	{
		theta += totalPush;
	}
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


if (_hp <= 0)
{
	instance_destroy();
}


if (place_meeting(x+_hpush*1.5,y,o_wall))
{
		_hpush = -_hpush * bnc;
		alarm[3] = 5;
}

if (place_meeting(x,y+_vpush*1.5,o_wall))
{
	_vpush = -_vpush * bnc;
	alarm[3] = 5;
}

nextWall = instance_nearest(x,y,o_wall)

if (collision_circle(x,y,15,nextWall, true, true))
{
	dir = point_direction(nextWall.x, nextWall.y,x,y);
	alarm[3] = 5;
	_hpush += nextWall.hspeed*1.2
	_vpush += nextWall.vspeed*1.2
}



x+= _hpush * global.relativeSpeed;
y+= _vpush * global.relativeSpeed;



if (alarm[3] < 0)
{
	
	x = cx + lengthdir_x(r, theta) 
	y = cy + lengthdir_y(r, theta) 
}
r = point_distance(x,y,room_width/2, room_height/2)