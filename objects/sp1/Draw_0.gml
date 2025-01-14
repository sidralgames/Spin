/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




if !surface_exists(surface)
{
surface = surface_create(room_width, room_height);
}


if (surface_exists(surface))
{
	if (spinCreateHole)
	{
		if (getImage = false)
		{
			surface_set_target(surface);
			draw_sprite_ext(sprite_index,discImage,x,y,1,1,image_angle, image_blend, image_alpha);
			surface_reset_target();
			draw_surface(surface,0,0)
			surface_set_target(surface);

			gpu_set_blendmode(bm_subtract);

			draw_set_alpha(1);
			draw_sprite_ext(s_roto1,holeImage,x + lengthdir_x(distHole,angleHole),y + lengthdir_y(distHole,angleHole),1,1,image_angle, image_blend, image_alpha);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			draw_surface(surface,0,0)
			getImage = true;
			
		}
	}
	else
	{
		draw_sprite_ext(sprite_index,discImage,x,y,1,1,image_angle, image_blend, image_alpha);
	}
	
	if (getImage = true)
	{
		surface_set_target(surface);

		spr_custom = sprite_create_from_surface(surface, 0, 0, 640, 360, true, false, 320, 180);
		sprite_index = spr_custom;
		image_angle = _angle
		spinCreateHole = false;
		surface_reset_target();
		getImage = false;
	}
}







	
