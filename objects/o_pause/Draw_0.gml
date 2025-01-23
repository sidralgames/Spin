/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_text_color(x,y,string(), c_white,c_white ,c_white,c_white,1)
if (pause) 
{
	//instance_activate_object(o_pauseMenu);
	surface_set_target(application_surface);

	if (surface_exists(pauseSurf)) 
	{
		draw_surface_ext(pauseSurf, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,const*_scale,const*_scale,0,image_blend,image_alpha)
	}
	else
	{
		pauseSurf = surface_create(resW, resH);
	}
	surface_reset_target();
	
}

if (key_start)
{
	//addInfoEnemiesKilled();

	//instance_activate_object(o_pauseMenu);
	if instance_exists(o_main)
	{
		o_main.isPaused = true;
	}
	alarm[0] = 5;
}
