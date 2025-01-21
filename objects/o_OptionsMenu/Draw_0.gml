/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor

if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeON;
}
else
{
	spriteShake = s_screenshakeOFF;
}

if (global.CRTIsOn)
{
	spriteCRT = s_CRTON;
}
else
{
	spriteCRT = s_CRTOFF
}

if (_visible)
{
	
		draw_set_halign(fa_center)
		switch(selected)
		{
			case 0:
			{
				initialCRT = lerp(initialCRT, 240,factor);
				//initialTut = lerp(initialTut, 230,factor);
				initialScreen = lerp(initialScreen, 290 ,factor)
				//initialStat =  lerp(initialStat, 295,factor);
				initialBack = lerp(initialBack, 315,factor);
				
				draw_sprite_ext(spriteCRT, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,1.1,1.1,0,image_blend, image_alpha)
				//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.9,0.9,0,image_blend,  0.8)	
				draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.8,0.8,0,image_blend,  0.8)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialCRT = lerp(initialCRT, 230,factor);
				//initialTut = lerp(initialTut, 188,factor);
				initialScreen = lerp(initialScreen, 270 ,factor)
				//initialStat =  lerp(initialStat, 307,factor);
				initialBack = lerp(initialBack, 310,factor);
				
				draw_sprite_ext(spriteCRT, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.7,0.7,0,image_blend,  0.8)
				//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(spriteShake, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,1.1,1.1,0,image_blend, image_alpha)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.8,0.8,0,image_blend,  0.8)	
				draw_sprite_ext(s_Back, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.7,0.7,0,image_blend,  0.8)	
			}break;
		
			case 2:
			{
				initialCRT = lerp(initialCRT, 220,factor);
				//initialTut = lerp(initialTut, 175,factor);
				initialScreen = lerp(initialScreen, 250 ,factor)
				//initialStat =  lerp(initialStat, 223,factor);
				initialBack = lerp(initialBack, 285,factor);
				
				draw_sprite_ext(spriteCRT, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialCRT,0.6,0.6,0,image_blend,  0.8)
				//draw_sprite_ext(s_play, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialTut,0.6,0.6,0,image_blend,  0.8)	
				draw_sprite_ext(spriteShake, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScreen,0.7,0.7,0,image_blend,  0.8)	
				//draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.7,0.7,0,image_blend,  0.8)	
				draw_sprite_ext(s_Back, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,1.1,1.1,0,image_blend, image_alpha)		
			}break;
		}
}



