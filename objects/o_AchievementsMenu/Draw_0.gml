/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Insert description here
// You can write your code in this editor


totalAch = global.totalNumberOfAchievements
// ------ DRAW ACHIEVEMENTS -----//
if (achievementsShowing)
{
	initialFlechaL= lerp(initialFlechaL, 203,factor);
	initialFlechaR= lerp(initialFlechaR, 203,factor);
	draw_sprite_ext(s_flechas, 0, __view_get( e__VW.XView, 0 )+ 320 - initialFlechaL ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
	draw_sprite_ext(s_flechas, 1, __view_get( e__VW.XView, 0 )+ 320 + initialFlechaR ,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend,  1)	
		
	initialAch = lerp(initialAch, 65,factor);
	initialAchDesc = lerp(initialAchDesc, 342,factor);
	initialAchT = lerp(initialAchT, 47,factor+0.05);
	initialPageOff = lerp(initialPageOff, 280, factor+ 0.05)
	draw_sprite_ext(s_ach, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAchT,1,1,0,image_blend,1)
	
	if (selectedPage = 0)
	{
		DrawAchievements(0, floor(totalAch / 4), selectedA, 0);
	}
	else if (selectedPage = 1)
	{
		DrawAchievements(floor(totalAch / 4), floor(totalAch / 2), selectedA + floor(totalAch / 4), floor(totalAch / 4));
	}
	else if (selectedPage = 2)
	{
		DrawAchievements(floor(totalAch / 2), floor(totalAch / 2) + floor(totalAch / 4), selectedA + floor(totalAch / 2), floor(totalAch / 2));
	}
	else if (selectedPage = 3)
	{
		DrawAchievements(floor(totalAch / 2) + floor(totalAch / 4), totalAch, selectedA + floor(totalAch / 2) + floor(totalAch / 4) , floor(totalAch / 2) + floor(totalAch / 4));
	}
}

// --- DRAW BACK ---//
draw_set_font(global.customFont13);
draw_set_halign(fa_right)
draw_set_color(global.lightBlue)
draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol+3, o_MainMenu._stringBack)
draw_set_color(global.yellow)
draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol+1, o_MainMenu._stringBack)
draw_set_color(global.pink)
draw_text( __view_get( e__VW.XView, 0 )+ 620,__view_get( e__VW.YView, 0 )+initialBackCol, o_MainMenu._stringBack)
