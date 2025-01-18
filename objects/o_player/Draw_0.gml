/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_left)
//draw_text(20,100,"playerSPEED: " +  string(speed))
//draw_text(20,120,"playerHspeed: " +  string(hspeed))
//draw_text(20,140,"playerVspeed: " +  string(vspeed))
//draw_text(20,80,"realSpeed: " +  string(realspeed))

//draw_text(20,160,"x: " +  string(x))
//draw_text(20,180,"y: " +  string(y))

//draw_text(20,200,"teta: " +  string(theta))
//draw_text_color(x,y+40,"yscale: " +  string(image_yscale),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+20,"xscale: " +  string(image_xscale),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+60,"angle: " +  string(image_angle),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+60,"dashE: " +  string(dashEnergy),c_white,c_white,c_white,c_white,1)
if (inDash)
{
	image_blend = c_aqua;
}
else
{
	image_blend = c_white;
}
draw_self();

if (dashEnergy < dashEnergyTotal)
{
	if (dashEnergy > dashEnergyMin)
	{
		draw_circular_bar(o_player.x+17, o_player.y-17, dashEnergy, dashEnergyTotal, global.lightBlue, 7,1, 2);
		draw_circular_bar(o_player.x+17, o_player.y-17, dashEnergy, dashEnergyTotal, c_white, 6,1, 2);
	}
	else
	{
		draw_circular_bar(o_player.x+17, o_player.y-17, dashEnergy, dashEnergyTotal, global.brightRed, 6,1, 2);
		draw_circular_bar(o_player.x+17, o_player.y-17, dashEnergy, dashEnergyTotal, global.red, 5,1, 2);
	}
}

if (dying = false)
{
	
	if (aiming) 
	{
		image_angle = aimDir;
		recoilGun = lerp(recoilGun, 0, 0.05)
	
		if (aimDir > 270 || aimDir < 90)
		{
			scaleGunY = 1;
			image_yscale = 1;
		
		}
		else
		{
			scaleGunY = -1;
			image_yscale = -1;
		}
	
		draw_sprite_ext(s_gun, 0, x + lengthdir_x(distGun - recoilGun, aimDir), y + lengthdir_y(distGun - recoilGun, aimDir),1,scaleGunY,aimDir,image_blend,image_alpha)
	}
	else
	{
		if (moving)
		{
			image_angle = direction;
	
			if (image_angle > 270 || image_angle < 90)
			{
				image_yscale = 1;
		
			}
			else
			{
				image_yscale = -1;
			}
		}
		else ////////////////loco
		{
			if (image_angle > 270 || image_angle < 90)
			{
				image_yscale = 1;
		
			}
			else
			{
				image_yscale = -1;
			}
	
			image_angle = direction;
		}
	}
}
