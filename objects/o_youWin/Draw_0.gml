/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
initialGameOver = lerp(initialGameOver, 70, factor);



draw_set_alpha(1)
draw_sprite_ext(s_youWin, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialGameOver,1.2,1.2,0,image_blend, image_alpha)

//draw_sprite_ext(s_bossesDefeated, 0,  __view_get( e__VW.XView, 0 )+ 235,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)
draw_set_alpha(1)
DrawTextTriColor(global.customFont15, fa_left, 220, 100, global.lightBlue, global.yellow, global.pink, 3, 1, "Tracks Defeated: " + string(numBossesDefeated))
DrawTextTriColor(global.customFont15, fa_left, 220, 120, global.lightBlue, global.yellow, global.pink, 3, 1, "B-Sides Defeated: " + string(numBossesDefeated))
DrawTextTriColor(global.customFont15, fa_left, 220, 140, global.lightBlue, global.yellow, global.pink, 3, 1, "Bullets Fired: " + string(global.runBullets))
DrawTextTriColor(global.customFont15, fa_left, 220, 160, global.lightBlue, global.yellow, global.pink, 3, 1, "Falls: " + string(global.runFalls))
DrawTextTriColor(global.customFont15, fa_left, 220, 180, global.lightBlue, global.yellow, global.pink, 3, 1, "Cables Lost: " + string(global.runCablesLost))
DrawTextTriColor(global.customFont15, fa_left, 220, 200, global.lightBlue, global.yellow, global.pink, 3, 1, "Cables Recovered: " + string(global.runCablesRecovered))

//if (global.bossesDefeatedInRun = 0)
//{
//	draw_sprite_ext(s_none, 0,  __view_get( e__VW.XView, 0 )+ 385,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)
//}
//else
//{
//	for (var i = 0; i < global.totalNumberOfVinyls; i++)
//	{
//		bossesDefeated = ds_map_find_value(global.collectionList, i);
	
//		if (bossesDefeated.defeatedInRun = 1)
//		{
//			draw_sprite_ext(bossesDefeated.spriteVinyl, 0 ,__view_get( e__VW.XView, 0 )+ 370+ (i * 40),__view_get( e__VW.YView, 0 )+170, 0.25, 0.25,rot+ (i * 30),bossesDefeated.vinylColor, bossesDefeated.vinylAlpha)
//			draw_sprite_ext(bossesDefeated.sprite, 0, __view_get( e__VW.XView, 0 )+ 370 + (i * 40),__view_get( e__VW.YView, 0 )+170,0.25,0.25,rot+ (i * 30),c_white, 1)
//		}
//	}
//}

if (_visible)
{
		switch(selected)
		{
			case 0:
			{
				initialRetry = lerp(initialRetry, 295,factor);
				initialMainMenu = lerp(initialMainMenu,330 ,factor)

				draw_sprite_ext(s_endlessMode, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialRetry,1,1,0,image_blend,image_alpha )
				draw_sprite_ext(s_mainMenuWin, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialMainMenu,0.6,0.6,0,image_blend,  0.8)	
			}break;
		
			case 1:
			{
				initialRetry = lerp(initialRetry, 290,factor);
				initialMainMenu = lerp(initialMainMenu, 320 ,factor)

				draw_sprite_ext(s_endlessMode, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialRetry,0.6,0.6,0,image_blend,  0.8)
				draw_sprite_ext(s_mainMenuWin, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialMainMenu,1,1,0,image_blend, image_alpha)	
			
			}break;
		}
}
