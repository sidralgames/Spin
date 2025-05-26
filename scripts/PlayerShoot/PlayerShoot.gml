// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerShoot()
{
	if (global.energy > global.shootingEnergyMin)
	{
		reloading = false;
	}
	
	switch(global.weapon)
	{
		case "Gun":
		{
			gunSprite = s_gun;
			
			if gamepad_is_connected(0)
			{
				if (aiming) && (reloading = false)
				{
					if (alarm[0] <= 0) && (global.energy >= 10)
					{
						audio_play_sound_on(global.audioEmitter,snd_shoot,false, 50,0.1,,random_range(1.1,1.2));
					
						global.energy -= shootEnergy;
						bullet = instance_create_layer(x + lengthdir_x(distGun+2, aimDir), y + lengthdir_y(distGun+2, aimDir), "BulletsPlayer", o_bulletPlayer);
						bullet.initialSpeed = 3.75;
						bullet.cancreateDoble = true;
						bullet.direction = aimDir+off;
						off = random_range(-10,10)
			
						recoil = true;
						contRecoil = 60;
						recoilGun = 15;
						direction = aimDir - 180;
						speed = 0.5;
						screenShake(1,5,0);
						global.vibration+=0.01;
			
						if (global.energy < 10)
						{
							alarm[0] = fireRate + 60;
							reloading = true;
						}
						else
						{
							alarm[0] = max(5,fireRate - global.fireRateAux);
							reloading = false;
						}
			
					}
				}
			}
			else
			{
				if (key_shoot) && (reloading = false)
				{
					if (alarm[0] <= 0) && (global.energy >= 10)
					{
						audio_play_sound_on(global.audioEmitter,snd_shoot,false, 50,0.1,,random_range(1.1,1.2));
					
						global.energy -= shootEnergy;
						bullet = instance_create_layer(x + lengthdir_x(distGun+2, aimDir), y + lengthdir_y(distGun+2, aimDir), "BulletsPlayer", o_bulletPlayer);
						bullet.initialSpeed = 3.75;
						bullet.direction = aimDir+off;
						bullet.cancreateDoble = true;
						off = random_range(-10,10)
			
						recoil = true;
						contRecoil = 60;
						recoilGun = 15;
						direction = aimDir - 180;
						speed = 0.5;
						screenShake(1,5,0);
						global.vibration+=0.01;
			
						if (global.energy < 10)
						{
							alarm[0] = fireRate + 60;
							reloading = true;
						}
						else
						{
							alarm[0] = max(5,fireRate - global.fireRateAux);
							reloading = false;
						}
					}
				}
			}
		}
		break;
		
		case "Shotgun":
		{
			gunSprite = s_shotgun;
			
			if gamepad_is_connected(0)
			{
				if (aiming) && (reloading = false)
				{
					if (alarm[0] <= 0) && (global.energy >= 10)
					{
						audio_play_sound_on(global.audioEmitter,snd_shoot,false, 50,0.2,,random_range(1,1.1));
						global.energy -= shotgunEnergy;
						for (var i=0; i<3; i++)
						{
							offShotgun +=10;
							bullet[i] = instance_create_layer(x + lengthdir_x(distGun+2, aimDir), y + lengthdir_y(distGun+2, aimDir), "BulletsPlayer", o_bulletPlayer);
							bullet[i].initialSpeed = 3.15;
							bullet[i].direction = aimDir+offShotgun;
							bullet[i].cancreateDoble = true;
						
						}
			
						recoil = true;
						contRecoil = 60;
						recoilGun = 15;
						direction = aimDir - 180;
						speed = 0.5;
						screenShake(1,5,0);
					
						global.vibration+=0.02;
			
						if (global.energy < 10)
						{
							alarm[0] = fireRateShotgun + 60;
							reloading = true;
							offShotgun = -10;
						}
						else
						{
							alarm[0] = max(5,fireRateShotgun - global.fireRateAux);
							reloading = false;
							offShotgun = -10;
						}
			
					}
				}
			}
			else
			{
				if (key_shoot) && (reloading = false)
				{
					if (alarm[0] <= 0) && (global.energy >= 10)
					{
						audio_play_sound_on(global.audioEmitter,snd_shoot,false, 50,0.2,,random_range(1,1.1));
						global.energy -= shotgunEnergy;
						for (var i=0; i<3; i++)
						{
							offShotgun +=10;
							bullet[i] = instance_create_layer(x + lengthdir_x(distGun+2, aimDir), y + lengthdir_y(distGun+2, aimDir), "BulletsPlayer", o_bulletPlayer);
							bullet[i].initialSpeed = 3.15;
							bullet[i].direction = aimDir+offShotgun;
							bullet[i].cancreateDoble = true;
						
						}
			
						recoil = true;
						contRecoil = 60;
						recoilGun = 15;
						direction = aimDir - 180;
						speed = 0.5;
						screenShake(1,5,0);
					
						global.vibration+=0.02;
			
						if (global.energy < 10)
						{
							alarm[0] = fireRateShotgun + 60;
							reloading = true;
							offShotgun = -10;
						}
						else
						{
							alarm[0] = max(5,fireRateShotgun - global.fireRateAux);
							reloading = false;
							offShotgun = -10;
						}
					}
				}
			}
		}
		break;
	}
}