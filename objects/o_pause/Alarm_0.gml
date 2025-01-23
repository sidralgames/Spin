/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (!pause)
	{
		pause = true;
		spriteBack=0;
		selected=0;
		//instance_activate_object(o_pauseMenu);
		
		//instance_activate_object(o_pauseMenu);
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,380,20);
		surface_reset_target();
		instance_deactivate_all(true);
	}
	else
	{
		
		pause = false;
		selected=0;
		spriteBack=0;
		goToMenu=false;
		instance_activate_all();
		o_main.isPaused = false;
		//instance_deactivate_object(o_pauseMenu);
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
	}
