/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;

key_x = keyboard_check(ord("X")) || mouse_check_button(mb_left);

key_R2 = gamepad_button_check(0, gp_shoulderrb)
key_L2 = gamepad_button_check(0, gp_shoulderlb)
key_L1_Pressed = gamepad_button_check_pressed(0, gp_shoulderl)

image_angle = direction;
if (!collision_circle(x,y,4,sp1,true,true)) && (inDash = false)
{
	contDie --;
	if (contDie <=0)
	{
	dying = true;
	depth = sp1.depth+3
	}
	
}
else
{
	contDie = 5;
}

if (key_L2)
{
	global.relativeSpeed = lerp(global.relativeSpeed, 0.5, 0.03);
	o_aguja.dist-= o_aguja.fac * global.relativeSpeed;
	songPitchOff = 0.2
	pitch = min(1,global.relativeSpeed + songPitchOff);
	audio_emitter_pitch(global.audioEmitter, pitch);
	slowed = true;
	
}
else if (key_R2)
{
	global.relativeSpeed = lerp(global.relativeSpeed, 1.5, 0.03)
	
	o_aguja.dist-= o_aguja.fac * (global.relativeSpeed-0.25);
	pitch = max(1,global.relativeSpeed-0.25);
	audio_emitter_pitch(global.audioEmitter, pitch);
	fwd = true;
	
}
else
{
	global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05)
	
	o_aguja.dist-= o_aguja.fac * global.relativeSpeed;
	
	if (slowed = true)
	{
		if(global.relativeSpeed > 0.8)
		{
			pitch = 1;
			audio_emitter_pitch(global.audioEmitter, pitch);
			global.relativeSpeed = 1;
			slowed = false;
		}
	}
	
	if (fwd = true)
	{
		if(global.relativeSpeed < 1.2)
		{
			pitch = 1;
			audio_emitter_pitch(global.audioEmitter, pitch);
			global.relativeSpeed = 1;
			fwd = false;
		}
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

r = clamp(r, 50, 190);

//if (r >= 182)
//{
//	dying = true;
	
//}

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
dirH = key_left - key_right;

bossPush = bossSpin * min(1.5, global.relativeSpeed);

//_hpush += dirH * global.walkAccelerationH;
//_vpush += dirV * global.walkAccelerationV;

totalPush = bossPush;

totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);

nextWall = instance_nearest(x,y,o_wall);



if (theta <= 0)
{
	theta =+ 360;	
}




if (_hp <= 0)
{
	instance_destroy();
}




//x = cx + lengthdir_x(r,theta) * global.relativeSpeed;
//y = cy + lengthdir_y(r,theta) * global.relativeSpeed;



//if (alarm[3] < 0)
//{
	
//	x = cx + lengthdir_x(r, theta) 
//	y = cy + lengthdir_y(r, theta) 
//}

var haxis = gamepad_axis_value(0, gp_axislh);
var vaxis = gamepad_axis_value(0, gp_axislv);


if (dashTime > 0)
{
	dashTime --;
}
if (dashTime <=0) && (inDash = true)
{
	image_xscale = 1;
	image_yscale = 1;
	inDash = false;
}


if (dying = false)
{
	switch(state)
	{
		case "free":
		{
			r = point_distance(x,y,room_width/2, room_height/2);
			theta = point_direction(room_width/2, room_height/2, x, y);
		
			if (bouncedWhileStopped = false) && (gamepad_axis_value(0, gp_axislh) > 0.1 || gamepad_axis_value(0, gp_axislh) < -0.1 || 
			gamepad_axis_value(0, gp_axislv) > 0.1 || gamepad_axis_value(0, gp_axislv) < -0.1 )
			{
				
				
					image_xscale = lerp(image_xscale,1.1,0.25);
					image_yscale = lerp(image_yscale,0.9,0.25);
				
				
				
				direction = point_direction(0, 0, haxis, vaxis);
			
				if (key_L1_Pressed) && (collision_circle(x,y,6,sp1,true,true)) //DASH
				{
					image_xscale = 1.75;
					image_yscale = 0.5;
					realspeed = 3;
					inDash = true;
					dashTime = 60;
				}
			
				bouncedWhileStopped = false;
			
				if collision_circle(x,y,10,nextWall,true,true) && (inDash = false)
				{
					bouncedWhileStopped = true;
					inDash = false;
					dashTime = 0;
					alarm[4] = 5;
				}
		
				if (place_meeting(x+hspeed*2.5,y,o_boss)) && (inDash = false)
				{
					inDash = false;
					dashTime = 0;
					hspeed = -hspeed * bnc;
					alarm[3] = 5;
				}

				if (place_meeting(x,y+vspeed*2.5,o_boss)) && (inDash = false)
				{
					inDash = false;
					dashTime = 0;
					vspeed = -vspeed * bnc;
					alarm[3] = 5;
				}
				
				x += hspeed* global.relativeSpeed;
				y += vspeed* global.relativeSpeed;
				
				theta += totalPush * global.relativeSpeed;/////////
	
				if (alarm[3] <= 0)
				{

					point_direction0 = point_direction(room_width/2, room_height/2, xprevious, yprevious);
					point_direction1 = point_direction(room_width/2, room_height/2, x, y);
	
					if point_direction1 > point_direction0
					{
						realspeed = lerp(realspeed, point_distance(0 ,0, haxis, vaxis) * (_speed - abs(bossSpin * global.relativeSpeed)), 0.1); // direccionContraria
					}
					else
					{
						realspeed = lerp(realspeed, point_distance(0 ,0, haxis, vaxis) * (_speed + abs((bossSpin/4) * global.relativeSpeed)), 0.1);
					}
					
					if (inDash = false)
					{
						speed = realspeed * min(1, global.relativeSpeed);
					}
					else
					{
						image_xscale = lerp(image_xscale,1,0.1);
						image_yscale = lerp(image_yscale,1,0.1);
						realspeed = lerp(realspeed,0,0.05)
						speed = realspeed * min(1, global.relativeSpeed);
						
						if (realspeed<=1)
						{
							inDash = false;
						}
					}
				}
				else
				{
					theta += totalPush * global.relativeSpeed;
					x = cx + lengthdir_x(r, theta) 
					y = cy + lengthdir_y(r, theta)
				}
			
			}
			else
			{
				if (bouncedWhileStopped)
				{
					if (alarm[4] > 0)
					{
						direction = point_direction(nextWall.x, nextWall.y, x, y);
					
						point_direction0 = point_direction(room_width/2, room_height/2, xprevious, yprevious);
						point_direction1 = point_direction(room_width/2, room_height/2, x, y);
	
						if point_direction1 > point_direction0
						{
							realspeed = lerp(realspeed, 0.6* (_speed - abs(bossSpin * global.relativeSpeed)), 0.1); // direccionContraria
						}
						else
						{
							realspeed = lerp(realspeed, 0.6 * (_speed + abs((bossSpin/4) * global.relativeSpeed)), 0.1);
						}
					
						speed = realspeed * min(1, global.relativeSpeed);
					
						x += hspeed* global.relativeSpeed;
						y += vspeed* global.relativeSpeed;
					
					}
					else
					{
						theta += totalPush * global.relativeSpeed;
						x = cx + lengthdir_x(r, theta) 
						y = cy + lengthdir_y(r, theta)
					
						if !collision_circle(x,y,11,nextWall,true,true)
						{
							bouncedWhileStopped = false;
							state = "stopped";
							image_xscale = 1;
							image_yscale = 1;
							inDash = false;
						}
						else
						{
							alarm[4] = 4;
						}
					}
				}
				else
				{
					state = "stopped";
					inDash = false;
					image_xscale = 1;
					image_yscale = 1;
				}
			}
		}break;
	
		case "stopped":
		{
			if collision_circle(x,y,10,nextWall,true,true)
			{
				state = "free";
				bouncedWhileStopped = true;
				alarm[4] = 4;
			}
			else
			{	
				theta += totalPush * global.relativeSpeed;
				x = cx + lengthdir_x(r, theta) 
				y = cy + lengthdir_y(r, theta)
			}
		
			if (gamepad_axis_value(0, gp_axislh) > 0.1 || gamepad_axis_value(0, gp_axislh) < -0.1 || 
			gamepad_axis_value(0, gp_axislv) > 0.1 || gamepad_axis_value(0, gp_axislv) < -0.1 )
			{
				state = "free";
				direction = point_direction(0, 0, haxis, vaxis);
			}
		}break;
	}

}
else
{
speed = lerp(speed, 0, 0.05)	
}
	
	



//DISPARAR 
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