/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_left)
//draw_text(x,100,"dirH: " +  string(dirH))
//draw_text(x,120,"dirV: " +  string(dirV))
//draw_text(x,140,"moveDir: " +  string(moveDir))
//draw_text(x,200,"moving: " +  string(moving))


//draw_text(20,160,"x: " +  string(x))
//draw_text(20,180,"y: " +  string(y))

//draw_text(20,200,"teta: " +  string(theta))
//draw_text_color(x,y+40,"yscale: " +  string(image_yscale),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+20,"xscale: " +  string(image_xscale),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+60,"angle: " +  string(image_angle),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+60,"E: " +  string(global.energy),c_white,c_white,c_white,c_white,1)
//draw_text_color(x,y+80,"TotalE: " +  string(global.energyTotal),c_white,c_white,c_white,c_white,1)

if (comesFromDeath)
{
	spotRad --;
	
	if (spotRad <=0)
	{
		spotRad = spotRadInitial;
	}
	draw_set_alpha(1);
	
	draw_circle(x,y,spotRad, true)
	draw_circle(x,y,spotRad+4, true)
	
}


if (inDash)
{
	image_blend = c_aqua;
}
else
{
	image_blend = c_white;
}
draw_self();

draw_set_alpha(0.8);
if (global.energy < global.energyTotal)
{
	if (global.energy > global.dashEnergyMin)
	{
		draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.lightBlue, 7,1, 2);
		draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, c_white, 6,1, 2);
	}
	else
	{
		draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.brightRed, 6,1, 2);
		draw_circular_bar(o_player.x+17, o_player.y-17, global.energy, global.energyTotal, global.red, 5,1, 2);
	}
}
draw_set_alpha(1);
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
		if gamepad_is_connected(0)
		{
			draw_sprite_ext(gunSprite, 0, x + lengthdir_x(distGun - recoilGun, aimDir), y + lengthdir_y(distGun - recoilGun, aimDir),1,scaleGunY,aimDir,image_blend,image_alpha)
		}
		else
		{
			draw_sprite_ext(gunSprite, 0, x + lengthdir_x(distGun - recoilGun, aimDir), y + lengthdir_y(distGun - recoilGun, aimDir),1,scaleGunY,aimDir,image_blend,image_alpha)
		}
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
