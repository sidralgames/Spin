/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (comeFromDeath)
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

//---- DRAW PLAYER ----//
draw_sprite_ext(sprite_index, 0, x, y ,image_xscale, image_yscale, image_angle, image_blend, image_alpha)

//---- DRAW ENERGY CIRCULAR BAR ----//
draw_set_alpha(0.8);
PlayerDrawCircularBar()
draw_set_alpha(1);


if (dying = false)
{
	if (haveShield = true)
	{
		draw_sprite_ext(s_shield, 0, x, y ,0.6,0.6,0,c_white,image_alpha)
	}
	
	if (global.haloUpgrade)
	{
		draw_sprite_ext(s_halo, 0, x, y-12 ,1,1,0,c_white,0.9);
	}
	
	if (aiming) 
	{
		PlayerDrawGun();
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



//draw_set_halign(fa_left)
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