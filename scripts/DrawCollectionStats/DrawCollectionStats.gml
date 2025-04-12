// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionStats()
{
	//---- DRAW TRACK STATS ---//
	draw_set_font(global.customFont14);
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+212, "Kills: " + string(_stringKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+211, "Kills: " + string(_stringKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+210, "Kills: " + string(_stringKills))
	

	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+232, "Deaths: " + string(_stringDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+231, "Deaths: " + string(_stringDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+230, "Deaths: " + string(_stringDeaths))
	
	
	//---- DRAW TOTAL STATS ---//
	draw_set_font(global.customFont13);
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+272, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+271, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+270, "Total Kills: " + string(global.totalKills))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+292, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+291, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+290, "Total Deaths: " + string(global.totalDeaths))
		
	//---- MORE STATS ---//
	draw_set_halign(fa_center)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+322, "^ More Stats ^")
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+321, "^ More Stats ^")
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+320, "^ More Stats ^")
}