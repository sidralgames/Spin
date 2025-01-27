/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
initialGameOver = lerp(initialGameOver, 70, factor);
global.relativeSpeed = 0.5;

draw_set_alpha(0.35)
draw_set_color(global.vinylColor)
draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
draw_set_alpha(0.65)
draw_set_color(global.darkPalette)
draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	

draw_set_alpha(1)
draw_sprite_ext(s_gameOver, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGameOver,1.2,1.2,0,image_blend, image_alpha)

draw_sprite_ext(s_bossesDefeated, 0,  __view_get( e__VW.XView, 0 )+ 235,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)

if (global.bossesDefeatedInRun = 0)
{
	draw_sprite_ext(s_none, 0,  __view_get( e__VW.XView, 0 )+ 385,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)
}
else
{
	for (var i = 0; i < global.totalNumberOfVinyls; i++)
	{
		bossesDefeated = ds_map_find_value(global.collectionList, i);
	
		if (bossesDefeated.defeatedInRun = 1)
		{
			draw_sprite_ext(bossesDefeated.spriteVinyl, 0 ,__view_get( e__VW.XView, 0 )+ 370+ (i * 45),__view_get( e__VW.YView, 0 )+170, 0.3, 0.3,rot+ (i * 30),bossesDefeated.vinylColor, bossesDefeated.vinylAlpha)
			draw_sprite_ext(bossesDefeated.sprite, 0, __view_get( e__VW.XView, 0 )+ 370 + (i * 45),__view_get( e__VW.YView, 0 )+170,0.3,0.3,rot+ (i * 30),c_white, 1)
		}
	}
}

if (_visible)
{
		switch(selected)
		{
			case 0:
			{
				initialRetry = lerp(initialRetry, 275,factor);
				initialMainMenu = lerp(initialMainMenu,320 ,factor)

				draw_sprite_ext(s_retry, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialRetry,1.2,1.2,0,image_blend,image_alpha )
				draw_sprite_ext(s_mainMenu, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialMainMenu,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialRetry = lerp(initialRetry, 260,factor);
				initialMainMenu = lerp(initialMainMenu, 300 ,factor)

				draw_sprite_ext(s_retry, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialRetry,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_mainMenu, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialMainMenu,1.2,1.2,0,image_blend, image_alpha)	
			
			}break;
		}
}
