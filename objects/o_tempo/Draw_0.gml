///// @description Inserte aquí la descripción
//// Puede escribir su código en este editor

if (corrupted)
{
	image_blend = choose(c_aqua,global.yellow, c_fuchsia)
}
else
{
	image_blend = c_white;
}

if instance_exists(o_bulletPitch)
{
	imageExclamation+=0.25;
	
	draw_sprite_ext(s_exclamations,imageExclamation,x,y-80,1,1,0,image_blend, image_alpha)
}

if (global.playing)
{
	draw_self();

	if (global.slowmoUpgrade)
	{
		draw_sprite_ext(s_tempoMeterSlow,0,x,meterY,scale,scale,0,image_blend, image_alpha)
	}
	else
	{
	
		draw_sprite_ext(s_tempoMeter,0,x,meterY,scale,scale,0,image_blend, image_alpha)
	}
}

//draw_text_color(x,y+80,string(y),c_white,c_white,c_white,c_white,1)
