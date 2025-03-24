/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor
initialTitle = lerp(initialTitle, 80,factor);
initialConfirm = lerp(initialConfirm, 330,factor);
draw_sprite_ext(s_xConfirm, 0,  __view_get( e__VW.XView, 0 )+ 570,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)

if (global.collection = false) && (global.howToPlay = false) 
{
	if instance_exists(o_OptionsMenu)
	{
		if (o_OptionsMenu.creditsShowing = false)
		{
			draw_sprite_ext(s_title, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTitle,1,1,0,image_blend, image_alpha)
		}
	}
	else
	{
		draw_sprite_ext(s_title, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTitle,1,1,0,image_blend, image_alpha)
	}
}
if (_visible)
{
	
	//draw_set_alpha(0.25)
	//draw_set_color(global.darkPalette)
	//draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
	//draw_set_alpha(1)
	
		draw_set_halign(fa_center)
		switch(selected)
		{
			case 0:
			{
				initialPlay = lerp(initialPlay, 215,factor);
				initialHow = lerp(initialHow, 262,factor);
				initialOption = lerp(initialOption, 290 ,factor)
				initialCollection =  lerp(initialCollection, 315,factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_play, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,1.2,1.2,0,image_blend, image_alpha)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.5,0.5,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialPlay = lerp(initialPlay, 210,factor);
				initialHow = lerp(initialHow, 245,factor);
				initialOption = lerp(initialOption, 285 ,factor)
				initialCollection =  lerp(initialCollection, 312,factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.7,0.7,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,1.2,1.2,0,image_blend,  image_alpha)	
				draw_sprite_ext(s_options, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend, 0.8)	
				draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_quit, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.5,0.5,0,image_blend,  0.8)	
			}break;
		
			case 2:
			{
				initialPlay = lerp(initialPlay, 207,factor);
				initialHow = lerp(initialHow, 230,factor);
				initialOption = lerp(initialOption, 269 ,factor)
				initialCollection =  lerp(initialCollection, 310,factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,1.2,1.2,0,image_blend,  image_alpha)	
				draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.7,0.7,0,image_blend,  0.8)
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.5,0.5,0,image_blend, 0.8)		
			}break;
			
			case 3:
			{
				initialPlay = lerp(initialPlay, 202,factor);
				initialHow = lerp(initialHow, 222,factor);
				initialOption = lerp(initialOption, 245 ,factor)
				initialCollection =  lerp(initialCollection, 285, factor);
				initialQuit = lerp(initialQuit, 335,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,1.2,1.2,0,image_blend,  image_alpha)
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.7,0.7,0,image_blend, 0.8)		
			}break;
			
			case 4:
			{
				initialPlay = lerp(initialPlay, 200,factor);
				initialHow = lerp(initialHow, 220,factor);
				initialOption = lerp(initialOption, 240 ,factor)
				initialCollection =  lerp(initialCollection, 260,factor);
				initialQuit = lerp(initialQuit, 310,factor);
				
				draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.5,0.5,0,image_blend,  0.8)
				draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.5,0.5,0,image_blend,  0.8)	
				draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.5,0.5,0,image_blend,  0.8)	
				draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.5,0.5,0,image_blend,  0.8)
				draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,1.2,1.2,0,image_blend, image_alpha)		
			}break;
		}
}

if (global.collection)
{
	initialCollection =  lerp(initialCollection, 50,factor);
	initialCollectionX = lerp(initialCollectionX, 110,factor);
	initialBackX =  lerp(initialBackX, 80,factor);
	initialBackY = lerp(initialBackY, 50,factor);
	//draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ initialCollectionX,__view_get( e__VW.YView, 0 )+initialCollection,0.8,0.8,0,image_blend,  1)	
	draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ initialBackX,__view_get( e__VW.YView, 0 )+initialBackY,0.8,0.8,0,image_blend,  1)	
	draw_sprite_ext(s_flechas, 0, o_boss.x - 214 ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
	draw_sprite_ext(s_flechas, 1, o_boss.x + 214 ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	

}

if instance_exists(o_HowToPlay)
{
	draw_sprite_ext(s_Back, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,0.8,0.8,0,image_blend, 1)		
}
