/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor

// ------ DRAW OPTIONS MENU -----//
if (_visible)
{
	xscale = random_range(0.9,1.1);
	yscale = random_range(0.9,1.1);
	initialOptions = lerp(initialOptions, 160,factor+0.05);
	
	//draw_sprite_ext(s_options, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialOptions,1.1,1.1,0,image_blend, image_alpha)
	
	draw_set_halign(fa_center)

	switch(selected)
	{
		case 0:
		{
			initialAchT = initialAch
			initialAch = lerp(initialAch, 205,factor);
			initialCRT = lerp(initialCRT, 245,factor);
			//initialTut = lerp(initialTut, 230,factor);
			initialScreen = lerp(initialScreen, 275 ,factor)
			initialCredits =  lerp(initialCredits, 300,factor);
			initialBack = lerp(initialBack, 322,factor);
			draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,1,1,0,image_blend,  image_alpha)	
			draw_sprite_ext(spriteCRT, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.6,0.6,0,image_blend, 0.8)
			//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.9,0.9,0,image_blend,  0.8)	
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_credits, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCredits,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend,  0.8)	
		}break;
		
		case 1:
		{
			initialAch = lerp(initialAch, 195,factor);
			initialCRT = lerp(initialCRT, 230,factor);
			//initialTut = lerp(initialTut, 230,factor);
			initialScreen = lerp(initialScreen, 275 ,factor)
			initialCredits =  lerp(initialCredits, 300,factor);
			initialBack = lerp(initialBack, 322,factor);
			
			draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(spriteCRT, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,1,1,0,image_blend, image_alpha)
			//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.9,0.9,0,image_blend,  0.8)	
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_credits, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCredits,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend,  0.8)	
		}break;
	
		case 2:
		{
			initialAch = lerp(initialAch, 190,factor);
			initialCRT = lerp(initialCRT, 213,factor);
			//initialTut = lerp(initialTut, 188,factor);
			initialScreen = lerp(initialScreen, 245 ,factor)
			initialCredits =  lerp(initialCredits, 295,factor);
			initialBack = lerp(initialBack, 320,factor);
			
			draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(spriteCRT, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.6,0.6,0,image_blend,  0.8)
			//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.8,0.8,0,image_blend,  0.8)	
			draw_sprite_ext(spriteShake, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,1,1,0,image_blend, image_alpha)	
			draw_sprite_ext(s_credits, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCredits,0.6,0.6,0,image_blend,  0.8)		
			draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend,  0.8)	
		}break;
	
		case 3:
		{
			initialAch = lerp(initialAch, 185,factor);
			initialCRT = lerp(initialCRT, 210,factor);
			//initialTut = lerp(initialTut, 175,factor);
			initialScreen = lerp(initialScreen, 235 ,factor)
			initialCredits =  lerp(initialCredits, 275,factor);
			initialBack = lerp(initialBack, 318,factor);
			
			draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(spriteCRT, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.6,0.6,0,image_blend,  0.8)
			//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_credits, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCredits,1,1,0,image_blend,  image_alpha)		
			draw_sprite_ext(s_Back, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, 0.8)		
		}break;
			
		case 4:
		{
			initialAch = lerp(initialAch, 180,factor);
			initialCRT = lerp(initialCRT, 205,factor);
			//initialTut = lerp(initialTut, 175,factor);
			initialScreen = lerp(initialScreen, 230 ,factor)
			initialCredits =  lerp(initialCredits, 258,factor);
			initialBack = lerp(initialBack, 300,factor);
			
			draw_sprite_ext(s_howTo, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.6,0.6,0,image_blend,  0.8)
			draw_sprite_ext(spriteCRT, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.6,0.6,0,image_blend,  0.8)
			//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.6,0.6,0,image_blend,  0.8)	
			draw_sprite_ext(s_credits, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCredits,0.6,0.6,0,image_blend,  0.8)		
			draw_sprite_ext(s_Back, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,1,1,0,image_blend, image_alpha)		
		}break;
	}
}

// ------ DRAW CREDITS -----//
if (creditsShowing)
{
	draw_sprite_ext(s_creditsText, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)		
}

