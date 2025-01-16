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


//x = cx + lengthdir_x(r,theta) * global.relativeSpeed;
//y = cy + lengthdir_y(r,theta) * global.relativeSpeed;


//if (alarm[3] < 0)
//{
	
//	x = cx + lengthdir_x(r, theta) 
//	y = cy + lengthdir_y(r, theta) 
//}

var haxis = gamepad_axis_value(0, gp_axislh);
var vaxis = gamepad_axis_value(0, gp_axislv);

haxisR = gamepad_axis_value(0, gp_axisrh);
vaxisR = gamepad_axis_value(0, gp_axisrv);


aiming = ((gamepad_axis_value(0, gp_axisrh) > 0.1 || gamepad_axis_value(0, gp_axisrh) < -0.1) || 
(gamepad_axis_value(0, gp_axisrv) > 0.1 || gamepad_axis_value(0, gp_axisrv) < -0.1 ));

moving =  ((gamepad_axis_value(0, gp_axislh) > 0.4 || gamepad_axis_value(0, gp_axislh) < -0.4) || 
(gamepad_axis_value(0, gp_axislv) > 0.4 || gamepad_axis_value(0, gp_axislv) < -0.4 ));
			

aimDir = point_direction(0, 0, haxisR, vaxisR)

if (moving)
{
	moveDir = point_direction(0, 0, haxis, vaxis)
}


if (dashTime > 0)
{
	dashTime --;
}
if (dashTime <=0) && (inDash = true)
{
	
	inDash = false;
}


if (dashEnergy < 100)
{
	dashEnergy += dashEnergyRecover;
}

if (dying = false)
{
	switch(state)
	{
		case "free":
		{
			r = point_distance(x,y,room_width/2, room_height/2);
			theta = point_direction(room_width/2, room_height/2, x, y);
			
			
			if (recoil)
				{
					contRecoil--;
					x += hspeed* global.relativeSpeed;
					y += vspeed* global.relativeSpeed;

					if (contRecoil <=0)
					{
						recoil = false;
						r = point_distance(x,y,room_width/2, room_height/2);
						theta = point_direction(room_width/2, room_height/2, x, y);
					}
				}
			
			if (bouncedWhileStopped = false) && (moving)
			{

				direction = point_direction(0, 0, haxis, vaxis);
			
				if (key_L1_Pressed) && (collision_circle(x,y,6,o_vinilo,true,true)) && (dashEnergy >= 25) //DASH
				{
					image_xscale = 1.75;
					image_yscale = 0.5;
					dashEnergy -= 25;
					realspeed += 3.2;
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
							image_xscale = 1;
							image_yscale = 1;
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
				if (recoil)
				{
					contRecoil--;
					x += hspeed* global.relativeSpeed;
					y += vspeed* global.relativeSpeed;
					speed = lerp(speed, 0, 0.2)
					if (contRecoil <=0) || (speed <= 0.2)
					{
						recoil = false;
						r = point_distance(x,y,room_width/2, room_height/2);
						theta = point_direction(room_width/2, room_height/2, x, y);
					}
				}
				else
				{	
					theta += totalPush * global.relativeSpeed;
					x = cx + lengthdir_x(r, theta) 
					y = cy + lengthdir_y(r, theta)
				}
			}
		
			if (gamepad_axis_value(0, gp_axislh) > 0.1 || gamepad_axis_value(0, gp_axislh) < -0.1 || 
			gamepad_axis_value(0, gp_axislv) > 0.1 || gamepad_axis_value(0, gp_axislv) < -0.1 )
			{
				state = "free";
				direction = point_direction(0, 0, haxis, vaxis);
			}
		}break;
	}
	
	//DISPARAR 
	PlayerShoot();

}
else
{
	speed = lerp(speed, 0, 0.05)	
}

Die();
	



