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
				initialPlay = lerp(initialPlay, 185,factor);
				initialTut = lerp(initialTut, 230,factor);
				initialOption = lerp(initialOption, 270 ,factor)
				initialStat =  lerp(initialStat, 295,factor);
				initialQuit = lerp(initialQuit, 320,factor);
				
				draw_sprite_ext(s_play, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,1.2,1.2,0,image_blend, image_alpha)
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.9,0.9,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialPlay = lerp(initialPlay, 170,factor);
				initialTut = lerp(initialTut, 210,factor);
				initialOption = lerp(initialOption, 279 ,factor)
				initialStat =  lerp(initialStat, 305,factor);
				initialQuit = lerp(initialQuit, 330,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.8,0.8,0,image_blend,  0.8)
				draw_sprite_ext(s_play, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 2:
			{
				initialPlay = lerp(initialPlay, 165,factor);
				initialTut = lerp(initialTut, 188,factor);
				initialOption = lerp(initialOption, 232 ,factor)
				initialStat =  lerp(initialStat, 307,factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.7,0.7,0,image_blend,  0.8)
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,1.2,1.2,0,image_blend, image_alpha)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.7,0.7,0,image_blend,  0.8)	
			}break;
		
			case 3:
			{
				initialPlay = lerp(initialPlay, 160,factor);
				initialTut = lerp(initialTut, 182,factor);
				initialOption = lerp(initialOption, 210 ,factor)
				initialStat =  lerp(initialStat, 245,factor);
				initialQuit = lerp(initialQuit, 330,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend, 0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,1.2,1.2,0,image_blend,  image_alpha)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.8,0.8,0,image_blend,  0.8)		
			}break;
			
			case 4:
			{
				initialPlay = lerp(initialPlay, 155,factor);
				initialTut = lerp(initialTut, 175,factor);
				initialOption = lerp(initialOption, 200 ,factor)
				initialStat =  lerp(initialStat, 223,factor);
				initialQuit = lerp(initialQuit, 268,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,1.2,1.2,0,image_blend, image_alpha)		
			}break;
		}
}



