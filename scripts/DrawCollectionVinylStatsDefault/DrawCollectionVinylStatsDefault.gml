// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionVinylStatsDefault()
{
	draw_set_halign(fa_left)
	draw_set_font(global.customFont15)
	
	
	
	draw_set_font(global.customFont14)
	draw_set_halign(fa_left)
	draw_set_color(global.lightBlue)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+294, "Kills: " + string(vinylToPlay.kills))
	draw_set_color(global.yellow)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+293, "Kills: " + string(vinylToPlay.kills))
	draw_set_color(global.pink)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+292, "Kills: " + string(vinylToPlay.kills))
	

	draw_set_color(global.lightBlue)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+314, "Deaths: " + string(vinylToPlay.deaths))
	draw_set_color(global.yellow)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+313, "Deaths: " + string(vinylToPlay.deaths))
	draw_set_color(global.pink)
	draw_text( __view_get( e__VW.XView, 0 )+ 35,__view_get( e__VW.YView, 0 )+312, "Deaths: " + string(vinylToPlay.deaths))

}