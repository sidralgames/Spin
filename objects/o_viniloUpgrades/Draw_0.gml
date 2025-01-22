/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




//if !surface_exists(surface)
//{
//surface = surface_create(room_width, room_height);
//}


//if (surface_exists(surface))
//{
//	if (spinCreateHole)
//	{
//		if (getImage = false)
//		{
//			image_angle = 0;
//			draw_set_alpha(0);
//			surface_set_target(surface);
//			draw_sprite_ext(sprite_index,discImage,x,y,1,1,image_angle, image_blend, image_alpha);
//			//draw_sprite_ext(sprite_index,discImage,x,y,1,1,image_angle, image_blend, image_alpha);
//			surface_reset_target();
//			draw_surface(surface,0,0)
//			surface_set_target(surface);

//			gpu_set_blendmode(bm_subtract);

//			draw_set_alpha(0);
//			draw_sprite_ext(s_roto1,holeImage,x + lengthdir_x(distHole,angleHole-_angle),y + lengthdir_y(distHole,angleHole-_angle),scaleRoto,scaleRoto,irandom(359), image_blend, image_alpha);
//			gpu_set_blendmode(bm_normal);
//			surface_reset_target();
//			draw_surface(surface,0,0);

//			getImage = true;
			
//		}
//	}

	
		
	
	
//	if (getImage = true)
//	{
//		draw_set_alpha(0);
//		surface_set_target(surface);
//		if sprite_exists(spr_custom)
//		{
//			sprite_delete(spr_custom)
//		}
//		spr_custom = sprite_create_from_surface(surface, 380, 20, 640, 360, true, false, 320, 180);
//		sprite_index = spr_custom;
//		image_angle = _angle;
//		spinCreateHole = false;
//		surface_reset_target();
//		surface_free(surface);
//		getImage = false;
//		viniloFake.sprite_index = spr_custom;
//	}
//}

draw_self();