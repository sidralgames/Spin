/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//draw_text_color(x,y+100,string(TotBulletsP1),c_white,c_white,c_white,c_white,1)

if !surface_exists(surfaceGalleta)
{
surfaceGalleta = surface_create(100, 100);
}


if (surface_exists(surfaceGalleta))
{
	if (spinCreateHole)
	{
		if (getImage = false)
		{
			image_angle = 0;
			draw_set_alpha(0);
			surface_set_target(surfaceGalleta);
			draw_sprite_ext(sprite_index,0,x,y,1,1,image_angle, image_blend, image_alpha);
			//draw_sprite_ext(sprite_index,discImage,x,y,1,1,image_angle, image_blend, image_alpha);
			surface_reset_target();
			draw_surface(surfaceGalleta,0,0)
			surface_set_target(surfaceGalleta);

			gpu_set_blendmode(bm_subtract);

			draw_set_alpha(0);
			draw_sprite_ext(s_exploBlue,2,x + lengthdir_x(bullethole,angleHole-_angle),y + lengthdir_y(bullethole,angleHole-_angle),0.5,0.5,irandom(359), image_blend, image_alpha);
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			draw_surface(surfaceGalleta,x, y);

			getImage = true;
			
		}
	}

	
		
	draw_self();
	
	if (getImage = true)
	{
		draw_set_alpha(0);
		surface_set_target(surfaceGalleta);
		if sprite_exists(spr_custom)
		{
			sprite_delete(spr_custom)
		}
		spr_custom = sprite_create_from_surface(surfaceGalleta, x, 20, 640, 360, true, false, 320, 180);
		sprite_index = spr_custom;
		image_angle = _angle;
		spinCreateHole = false;
		surface_reset_target();
		surface_free(surfaceGalleta);
		getImage = false;
		galletaFake.sprite_index = spr_custom;
	}
}