/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;

key_X = keyboard_check(ord("X"));
key_shoot = mouse_check_button(mb_left);

key_escudo = gamepad_button_check(0, gp_shoulderlb)
key_slowmo = gamepad_button_check(0, gp_shoulderrb)
key_L1_Pressed = gamepad_button_check_pressed(0, gp_shoulderl) || keyboard_check_pressed(vk_space) ||  mouse_check_button_pressed(mb_right);


//--- CHECK LEVEL SELECTOR UPGRADES ---//
CheckUpgradesFromLevelSelector();

//--- REAPPEAR AFTER LOSING A LIFE ---//
if (comeFromDeath)
{
	PlayerComeFromDeath()
}

if (tocado = true)
{
	image_alpha = random_range(0.25,1);
}

//STOP VINYL AFTER LOSING A LIFE
if (contComeFromDeath <= 0) && (checkVinylSpin = false)
{
	VinylComeFromDeath();
}


if (inDash)
{
	image_blend = c_aqua;
}
else
{
	image_blend = c_white;
}


if (slowedFromAHit)
{
	PlayerSlowedFromAHit()
}
else
{
	if (global.tempoCorrupted = false)
	{
		if (key_slowmo) && (global.energy > 0) && (global.slowmoUpgrade = true)
		{
			global.energy-= slowMoEnergy;
			SlowDown(0.5, 0.03);
		}
		//else if (key_escudo)  && !(key_slowmo)
		//{
		//	FWD();
		//}
		else if (global.autoPitch = false)
		{
			
			o_aguja.angleAguja-= o_aguja.fac * global.relativeSpeed;
	
			if (global.slowed = true)
			{
				global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05);
				pitch = min(1,global.relativeSpeed + songPitchOff);
				audio_emitter_pitch(global.audioEmitter, pitch);
				
				if(global.relativeSpeed > 0.9)
				{
					pitch = 1;
					audio_emitter_pitch(global.audioEmitter, pitch);
					global.relativeSpeed = 1;
					global.slowed = false;
				}
			}
	
			if (global.fwd = true)
			{
				global.relativeSpeed = lerp(global.relativeSpeed, 1, 0.05)
				pitch = max(1,global.relativeSpeed-0.25);
				audio_emitter_pitch(global.audioEmitter, pitch);
				if(global.relativeSpeed < 1.2)
				{
					pitch = 1;
					audio_emitter_pitch(global.audioEmitter, pitch);
					global.relativeSpeed = 1;
					global.fwd = false;
				}
			}
		}
	}
}

r = clamp(r, 50, 190);

dirH = key_right - key_left;
dirV = key_down - key_up;

bossSpin = global.vinylSpin;
bossPush = bossSpin * global.relativeSpeed;


totalPush = bossPush;

totalPush = clamp(totalPush, -totalMaxSpeed, totalMaxSpeed);

nextWall = instance_nearest(x,y,o_wall);


if (theta <= 0)
{
	theta =+ 360;	
}

if gamepad_is_connected(0)
{
	var haxis = gamepad_axis_value(0, gp_axislh);
	var vaxis = gamepad_axis_value(0, gp_axislv);


	haxisR = gamepad_axis_value(0, gp_axisrh);
	vaxisR = gamepad_axis_value(0, gp_axisrv);


	aiming = ((gamepad_axis_value(0, gp_axisrh) > 0.3 || gamepad_axis_value(0, gp_axisrh) < -0.3) || 
	(gamepad_axis_value(0, gp_axisrv) > 0.3 || gamepad_axis_value(0, gp_axisrv) < -0.3 ));

	moving =  ((gamepad_axis_value(0, gp_axislh) > 0.4 || gamepad_axis_value(0, gp_axislh) < -0.4) || 
	(gamepad_axis_value(0, gp_axislv) > 0.4 || gamepad_axis_value(0, gp_axislv) < -0.4 ));
			

	aimDir = point_direction(0, 0, haxisR, vaxisR)

	if (moving)
	{
		moveDir = point_direction(0, 0, haxis, vaxis)
	}
}
else
{
	var haxis = dirH
	var vaxis = dirV;

	if (dirH != 0) || (dirV != 0)
	{
		moving = true 
	}
	else
	{
		moving = false
	}
			
	if (key_shoot)
	{
		aiming = true;
	}
	else
	{
		aiming = false;
	}
	aimDir = point_direction(x, y, mouse_x, mouse_y)

	if (moving)
	{
		moveDir = point_direction(0, 0, haxis, vaxis)
	}
}


if (dashTime >= 0)
{
	dashTime --;
}
if (dashTime <=0) && (inDash = true)
{
	inDash = false;
}



if (global.energy < global.energyTotal) && (alarm[0] <= 0) && (!key_slowmo) && (!aiming) && (!haveShield)
{
	global.energy += global.energyRecharge;
}

global.energy = clamp(global.energy, 0, global.energyTotal)

if (dying = false)
{
	if (inDash = false)
	{
		image_xscale = lerp(image_xscale, 1, 0.05);
		image_yscale = lerp(image_yscale, 1, 0.05);
	}
	
	switch(state)
	{
		case "free":
		{
			r = point_distance(x,y,global.cx, global.cy);
			theta = point_direction(global.cx, global.cy, x, y);
			
			
			if (inDash)
			{
				if collision_circle(x,y,12,o_boss,true,true)
				{
					direction = point_direction(o_boss.x, o_boss.y, x, y);
					alarm[3] = 5;
					inDash = false;
					dashTime = 0;
					realspeed = 2;
					speed = realspeed;
					bouncedWhileStopped = true;
				}
					
			}
			
			if (recoil)
			{
				contRecoil--;
				//realspeed = lerp(realspeed, point_distance(0 ,0, haxis, vaxis) * (_speed - abs(bossSpin * global.relativeSpeed)), 0.1);

				if (contRecoil <=0)
				{
					recoil = false;
					r = point_distance(x,y,global.cx, global.cy);
					theta = point_direction(global.cx, global.cy, x, y);
				}
			}
			
			if (bouncedWhileStopped = false) && (moving)
			{
				direction = point_direction(0, 0, haxis, vaxis);
				
				//---DASH---//
				if (key_L1_Pressed) && (collision_circle(x,y,6,o_Floor,true,true)) && (global.energy >= global.dashEnergyMin) 
				{
					image_xscale = 1.75;
					image_yscale = 0.5;
					global.energy -= global.dashEnergyMin;
					realspeed += global.dashSpeed;
					inDash = true;
					dashTime = 60;
					global.dashes += 1;
				}
				
			
				bouncedWhileStopped = false;
			
				if collision_circle(x,y,8,nextWall,true,true) && (inDash = false)
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
					hspeed = -hspeed;
					alarm[3] = 5;
				}

				if (place_meeting(x,y+vspeed*2.5,o_boss)) && (inDash = false)
				{
					inDash = false;
					dashTime = 0;
					vspeed = -vspeed;
					alarm[3] = 5;
				}
				
				x += hspeed* global.relativeSpeed;
				y += vspeed* global.relativeSpeed;
				
				//theta += totalPush * global.relativeSpeed;/////////
	
				if (alarm[3] <= 0)
				{

					point_directionPrev = point_direction(global.cx, global.cy, xprevious, yprevious);
					point_directionActual = point_direction(global.cx, global.cy, x, y);
	
					if (point_directionActual > point_directionPrev)
					{
						runningAgainstDisc = true;
						global.runningAgainstSpinmilisecs+= (delta_time*0.000001)*room_speed;
						realspeed = lerp(realspeed, point_distance(0 ,0, haxis, vaxis) * (_speed - abs(bossSpin * global.relativeSpeed)), 0.1); // direccionContraria
					}
					else
					{
						runningAgainstDisc = false;
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
					theta += totalPush;
					x = global.cx + lengthdir_x(r, theta) 
					y = global.cy + lengthdir_y(r, theta)
				}
			
			}
			else
			{
				if (bouncedWhileStopped)
				{
					if (alarm[4] > 0)
					{
						if instance_exists(nextWall)
						{
							direction = point_direction(nextWall.x, nextWall.y, x, y);
						}
					
						point_directionPrev = point_direction(global.cx, global.cy, xprevious, yprevious);
						point_directionActual = point_direction(global.cx, global.cy, x, y);
	
						if point_directionActual > point_directionPrev
						{
							realspeed = lerp(realspeed, 0.6* (_speed - abs(bossSpin * global.relativeSpeed)), 0.1); // direccionContraria
						}
						else
						{
							realspeed = lerp(realspeed, 0.6 * (_speed + abs((bossSpin/4) * global.relativeSpeed)), 0.1);
						}
					
						speed = 1 * min(1, global.relativeSpeed);
					
						x += hspeed* global.relativeSpeed;
						y += vspeed* global.relativeSpeed;
					
					}
					else
					{
						theta += totalPush;
						x = global.cx + lengthdir_x(r, theta) 
						y = global.cy + lengthdir_y(r, theta)
					
						if !collision_circle(x,y,8,nextWall,true,true)
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
			runningAgainstDisc = false;
			
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
						r = point_distance(x,y,global.cx, global.cy);
						theta = point_direction(global.cx, global.cy, x, y);
					}
				}
				else
				{	
					theta += totalPush;
					x = global.cx + lengthdir_x(r, theta) 
					y = global.cy + lengthdir_y(r, theta)
				}
			}
		
			if (moving)
			{
				state = "free";
				direction = point_direction(0, 0, haxis, vaxis);
			}
		}break;
	}
	
	//DISPARAR 
	PlayerShoot();
	
	//SHIELD
	PlayerShield();

}
else
{
	speed = lerp(speed, 0, 0.05)	
}

Die();





