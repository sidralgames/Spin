/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_boss)
{
	if (image_index > 9) && (o_boss.laserCont > 100)
	{
		image_speed = 0;
	}
	
	if (o_boss.laserCont < 60) && (image_index >=2)
	{
		image_speed = -0.5;
	}
	if (o_boss.laserCont < 60) && (image_index <=2)
	{
		image_speed = 0;
	}
	
	
	
	
	if (o_boss.isLaser)
	{
		if (lasersounding = false)
		{
			audio_stop_sound(soundActive);
			audio_stop_sound(soundCharge);
			audio_play_sound_on(global.audioEmitter, snd_laserShoot, false, 50);
			soundActive = audio_play_sound_on(global.audioEmitter, snd_laserActive, true, 5, 0.4);
			lasersounding = true;
		}
	}
	else
	{
		audio_stop_sound(soundActive);
		lasersounding = false;
	}
	
	var maxLenght_ = 350;
	//screenShake(2,10);
	//gamepad_set_vibration(0,0.2, 0.2);
	for(var i = 0; i < maxLenght_; i += coef)
	{
		if (i <= 100)
		{
			coef = 10 
		}
		else
		{
			coef = 50;
		}
		maxLenght=i;
	     var lx = x + lengthdir_x(i, angleLaser);
	     var ly = y + lengthdir_y(i, angleLaser);
	 
	     if place_meeting(lx, ly, o_wall)
		 {
			 maxLenght_=i-3
			 maxLenght = maxLenght_-3;
		}
	}

	if (o_boss.isLaser)
	{
		player = collision_line(x,y,x+lengthdir_x(maxLenght_+10, angleLaser+random_range(1,-1)), y+lengthdir_y(maxLenght_+10,angleLaser+random_range(1,-1)), o_player,false, true)
		enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+10, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+10,angleLaser+random_range(2,-2)), o_enemyFather,false, true)
		wall = collision_line(x,y,x+lengthdir_x(maxLenght_+10, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+10,angleLaser+random_range(2,-2)), o_wall,false, true)

		if instance_exists(enemy)
		{
			if (enemy)
			{
				screenShake(4,10);
				enemy._hp -= 0.25;
				//enemy.flashAlpha = 1;
			}
		}
		
		if instance_exists(wall)
		{
			if (wall)
			{
				//screenShake(1,10);
				wall._hp -= 0.15;
				//enemy.flashAlpha = 1;
			}
		}

		if instance_exists(player)
		{
			if (player)
			{
				with (o_player)
				{
					PlayerIsHit(false);
				}
			}
		}
	}

	if (o_boss.isWarningLaser)
	{
		if (chargingLaser = false)
		{
			chargingLaser = true;
			soundCharge = audio_play_sound_on(global.audioEmitter, snd_laserActivating, false, 50);
		}
	}
	else
	{
		audio_stop_sound(soundCharge);
		chargingLaser = false;
	}

}
else
{
	instance_destroy();
}




