/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (alarm[0] <=0)
{
	if (_alpha <= 0.5)
	{
		image_alpha = _alpha;
	}
	else
	{
		image_alpha = 1;
	}
	cont --;
	_angle -=0.2;
	
	image_speed = 0.5;
	if (cont > 0)
	{
		
		_alpha = lerp(_alpha, 0.55, 0.1)
	}

	draw_set_alpha(_alpha);
	draw_set_color(vinylColorBSide)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
	draw_set_alpha(_alpha-0.2);
	draw_set_color(global.darkPalette)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_self();
	
	draw_sprite_ext(s_discoVinilo,0,x,y+16,0.45,0.45,_angle,vinylColorBSide,vinylAlphaBSide);
	
	if (global.haveEye = true)
	{
		draw_sprite_ext(global.spriteBossEye,0,x,y+16,0.45,0.45,_angle,c_white,1);
	}
	
	draw_sprite_ext(spriteBSide,0,x,y+16,0.45,0.45,_angle,c_white,1);

	if (image_index >= 17)
	{
		image_speed = 0;
	}
	
	if (cont <= 0)
	{
		_alpha -=0.1;
	
		if (_alpha <= 0.1)
		{
			global.haveEye = false;
			upgradeVinyl = instance_create_layer(x,y,"Vinyl", o_viniloUpgrades);
			upgradeGalleta = instance_create_layer(x,y,"Boss", o_upgrades);
			upgradeGalleta.image_xscale = 0.12;
			upgradeGalleta.image_yscale = 0.12;
			instance_destroy(o_vinilo);
			instance_destroy(oViniloFake);
			instance_destroy();
		}
	}
}