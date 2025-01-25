/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor


if (_visible)
{
	
		draw_set_halign(fa_center)
		switch(selected)
		{
			case 0:
			{
				initialPlay = lerp(initialPlay, 220,factor);
				initialHow = lerp(initialHow, 265,factor);
				initialOption = lerp(initialOption, 300 ,factor)
				//initialStat =  lerp(initialStat, 295,factor);
				initialQuit = lerp(initialQuit, 325,factor);
				
				draw_sprite_ext(s_play, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,1.2,1.2,0,image_blend, image_alpha)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.9,0.9,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend,  0.8)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialPlay = lerp(initialPlay, 210,factor);
				initialHow = lerp(initialHow, 245,factor);
				initialOption = lerp(initialOption, 295 ,factor)
				//initialStat =  lerp(initialStat, 307,factor);
				initialQuit = lerp(initialQuit, 323,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.7,0.7,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,1.2,1.2,0,image_blend,  image_alpha)	
				draw_sprite_ext(s_options, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend, 0.8)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 2:
			{
				initialPlay = lerp(initialPlay, 207,factor);
				initialHow = lerp(initialHow, 232,factor);
				initialOption = lerp(initialOption, 275 ,factor)
				//initialStat =  lerp(initialStat, 223,factor);
				initialQuit = lerp(initialQuit, 320,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,1.2,1.2,0,image_blend,  image_alpha)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.7,0.7,0,image_blend, 0.8)		
			}break;
			
			case 3:
			{
				initialPlay = lerp(initialPlay, 205,factor);
				initialHow = lerp(initialHow, 230,factor);
				initialOption = lerp(initialOption, 260 ,factor)
				//initialStat =  lerp(initialStat, 223,factor);
				initialQuit = lerp(initialQuit, 305,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,1.2,1.2,0,image_blend, image_alpha)		
			}break;
		}
}



