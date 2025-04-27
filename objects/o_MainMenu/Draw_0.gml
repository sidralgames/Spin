/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)


if (global.collection = false) && (global.howToPlay = false) 
{
	if instance_exists(o_OptionsMenu)
	{
		initialTitle = lerp(initialTitle, 70,factor);
		if (o_OptionsMenu.creditsShowing = false) 
		{
			draw_sprite_ext(s_title, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTitle,1,1,0,image_blend, image_alpha)
		}
	}
	else if instance_exists(o_AchievementsMenu)
	{
		initialTitle = lerp(initialTitle, 70,factor);
		if (o_AchievementsMenu.achievementsShowing = false) 
		{
			draw_sprite_ext(s_title, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTitle,1,1,0,image_blend, image_alpha)
		}
	}
	else
	{
		initialTitle = lerp(initialTitle, 80,factor);
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
			initialHow = lerp(initialHow, 260,factor);
			initialOption = lerp(initialOption, 290 ,factor)
			initialCollection =  lerp(initialCollection, 315,factor);
			initialQuit = lerp(initialQuit, 335,factor);
			
			draw_sprite_ext(s_play, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.7,0.7,0,image_blend,  0.8)	
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
			draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,1,1,0,image_blend,  image_alpha)	
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
			draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,1,1,0,image_blend,  image_alpha)	
			draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.5,0.5,0,image_blend, 0.8)		
		}break;
		
		case 3:
		{
			initialPlay = lerp(initialPlay, 202,factor);
			initialHow = lerp(initialHow, 222,factor);
			initialOption = lerp(initialOption, 248 ,factor)
			initialCollection =  lerp(initialCollection, 285, factor);
			initialQuit = lerp(initialQuit, 335,factor);
			
			draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.7,0.7,0,image_blend,  0.8)	
			draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,1,1,0,image_blend,  image_alpha)
			draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,0.6,0.6,0,image_blend, 0.8)		
		}break;
		
		case 4:
		{
			initialPlay = lerp(initialPlay, 200,factor);
			initialHow = lerp(initialHow, 220,factor);
			initialOption = lerp(initialOption, 240 ,factor)
			initialCollection =  lerp(initialCollection, 260,factor);
			initialQuit = lerp(initialQuit, 310,factor);
			
			draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialPlay,0.5,0.5,0,image_blend,  0.8)
			draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialHow,0.5,0.5,0,image_blend,  0.8)	
			draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOption,0.5,0.5,0,image_blend,  0.8)	
			draw_sprite_ext(s_collection, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCollection,0.5,0.5,0,image_blend,  0.8)
			draw_sprite_ext(s_quit, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialQuit,1,1,0,image_blend, image_alpha)		
		}break;
	}
}

if gamepad_is_connected(0)
{
	imgBack = 0;
	_stringBack = "O Back";
	_stringBSideKey = "R2";
}
else
{
	imgBack = 1;
	_stringBack = "Z Back";
	_stringBSideKey = "B";
}

if (global.collection)
{
	if (_visibleCollection)
	{
		if (initialBackY > 305)
		{
			if (vinylToPlay.isDLC = true)
			{
				draw_sprite_ext(vinylToPlay.spriteDLCTitle, 0,  __view_get( e__VW.XView, 0 )+ xDistCollection + 470,__view_get( e__VW.YView, 0 )+90,1,1,0,image_blend,  1)	
			}
			//else
			//{
			//	draw_sprite_ext(s_title, 0,  __view_get( e__VW.XView, 0 )+ xDistCollection + 470,__view_get( e__VW.YView, 0 )+90,0.5,0.5,0,image_blend,  1)	
			//}

			DrawCollectionVinylStats(vinylToPlay.unlocked);
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
		if (_moreStats = false)
		{
			initialFlechaL= lerp(initialFlechaL, 223,factor);
			initialFlechaR= lerp(initialFlechaR, 223,factor);
			draw_sprite_ext(s_flechas, 0, __view_get( e__VW.XView, 0 )+ 320 - initialFlechaL ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
			draw_sprite_ext(s_flechas, 1, __view_get( e__VW.XView, 0 )+ 320 + initialFlechaR ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
		}
	}
	else
	{
		initialConfirm = lerp(initialConfirm, 340,factorGuide);
		draw_sprite_ext(s_hideCollection, 1,  __view_get( e__VW.XView, 0 )+ 540,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)
	}
}
else
{
	
	if (selected = 0) && (atLeastOneBSide)
	{
		
		draw_set_font(global.customFont13);
		draw_set_halign(fa_right)
		draw_set_color(global.lightBlue)
		draw_text(__view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm +23,  "B-Sides < " + _stringBSideActive + " >")
		draw_set_color(global.yellow)
		draw_text(__view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm +21,  "B-Sides < " + _stringBSideActive + " >")
		draw_set_color(global.pink)
		draw_text(__view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm+20,   "B-Sides < " + _stringBSideActive + " >")
	
		initialConfirm = lerp(initialConfirm, 305,factor);
		draw_set_halign(fa_right)
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm+3, _stringConfirm)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm+1, _stringConfirm)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm, _stringConfirm)
	
	
	}
	else
	{
		initialConfirm = lerp(initialConfirm, 325,factor);
		draw_set_font(global.customFont13);
		draw_set_halign(fa_right)
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm+3, _stringConfirm)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm+1, _stringConfirm)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialConfirm, _stringConfirm)
	}
	//draw_sprite_ext(s_xConfirm, 0,  __view_get( e__VW.XView, 0 )+ 530,__view_get( e__VW.YView, 0 )+initialConfirm,1,1,0,image_blend, image_alpha)
}

if instance_exists(o_HowToPlay)
{
	initialConfirm = lerp(initialConfirm, 287, factorGuide)
	initialBackCol = lerp(initialBackCol, 322, factorGuide)
	//draw_sprite_ext(s_backCollection, imgBack,  __view_get( e__VW.XView, 0 )+ 530,__view_get( e__VW.YView, 0 )+initialBackCol,1,1,0,image_blend,  1)	
	
	draw_set_font(global.customFont13);
	draw_set_halign(fa_right)
	draw_set_color(global.lightBlue)
	draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol+3, _stringBack)
	draw_set_color(global.yellow)
	draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol+1, _stringBack)
	draw_set_color(global.pink)
	draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol, _stringBack)

}

draw_set_alpha(1)