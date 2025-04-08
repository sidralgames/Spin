/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor

initialTitle = lerp(initialTitle, 80,factor);

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
	if gamepad_is_connected(0)
	{
		imgBack = 0;
	}
	else
	{
		imgBack = 1;
	}
	
	if (_visibleCollection)
	{
		if (initialBackY > 305)
		{
			if (vinylToPlay.isDLC = true)
			{
				draw_sprite_ext(vinylToPlay.spriteDLCTitle, 0,  __view_get( e__VW.XView, 0 )+ 120,__view_get( e__VW.YView, 0 )+90,1,1,0,image_blend,  1)	
			}
	
			if (vinylToPlay.unlocked >= 1)
			{
				DrawCollectionVinylStats();
			}
			else
			{
				DrawCollectionVinylStatsDefault();
			}
		}

		initialBackX =  lerp(initialBackX, 530,factor);
		initialBackY = lerp(initialBackY, 330,factor);
		initialBackCol = lerp(initialBackCol, 340, factorGuide)
		initialHide = lerp(initialHide, 302,factorGuide);
		initialConfirm = lerp(initialConfirm, 320,factorGuide);
	
		draw_sprite_ext(s_hideCollection, 0,   __view_get( e__VW.XView, 0 )+ 540,__view_get( e__VW.YView, 0 )+initialHide,1,1,0,image_blend,  1)
		draw_sprite_ext(s_backCollection, imgBack,  __view_get( e__VW.XView, 0 )+ 540,__view_get( e__VW.YView, 0 )+initialBackCol,1,1,0,image_blend,  1)	
		draw_sprite_ext(s_xConfirm, 1,  __view_get( e__VW.XView, 0 )+ 540,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)
		
		//---- ARROWS ---//	
		initialFlechaL= lerp(initialFlechaL, 223,factor);
		initialFlechaR= lerp(initialFlechaR, 223,factor);
		draw_sprite_ext(s_flechas, 0, o_boss.x - initialFlechaL ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
		draw_sprite_ext(s_flechas, 1, o_boss.x + initialFlechaR ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
	
	}
	else
	{
		initialConfirm = lerp(initialConfirm, 340,factorGuide);
		draw_sprite_ext(s_hideCollection, 1,  __view_get( e__VW.XView, 0 )+ 540,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)
	}
}
else
{
	initialConfirm = lerp(initialConfirm, 340,factor);
	draw_sprite_ext(s_xConfirm, 0,  __view_get( e__VW.XView, 0 )+ 530,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)
}

if instance_exists(o_HowToPlay)
{
	initialConfirm = lerp(initialConfirm, 300, factorGuide)
	initialBackCol = lerp(initialBackCol, 335, factorGuide)
	draw_sprite_ext(s_backCollection, imgBack,  __view_get( e__VW.XView, 0 )+ 530,__view_get( e__VW.YView, 0 )+initialBackCol,1,1,0,image_blend,  1)	
}


