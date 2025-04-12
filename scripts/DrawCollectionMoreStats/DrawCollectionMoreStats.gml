// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionMoreStats()
{
	//---- MORE STATS ---//
	draw_set_font(global.customFont13);
		
	//draw_set_color(global.lightBlue);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+142, "Total Kills: " + string(global.totalKills))
	//draw_set_color(global.yellow);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+141, "Total Kills: " + string(global.totalKills))
	//draw_set_color(global.pink);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+140, "Total Kills: " + string(global.totalKills))
	
	//draw_set_color(global.lightBlue);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+162, "Total Deaths: " + string(global.totalDeaths))
	//draw_set_color(global.yellow);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+161, "Total Deaths: " + string(global.totalDeaths))
	//draw_set_color(global.pink);
	//draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+160, "Total Deaths: " + string(global.totalDeaths))

	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+162, "Best Run: LVL " + string(global.maxLevelReached))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+161, "Best Run: LVL " + string(global.maxLevelReached))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+160, "Best Run: LVL " + string(global.maxLevelReached))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+182, "Bullets Fired: " + string(global.bulletsFired))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+181, "Bullets Fired: " + string(global.bulletsFired))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+180, "Bullets Fired: " + string(global.bulletsFired))
	
	draw_set_halign(fa_left)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+202, "Fell off the Vinyl " + string(global.falls) +  " times")
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+201, "Fell off the Vinyl " + string(global.falls) +  " times")
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+200, "Fell off the Vinyl " + string(global.falls) +  " times")
		
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+222, "Cables Lost: " + string(global.cablesLost))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+221, "Cables Lost: " + string(global.cablesLost))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+220, "Cables Lost: " + string(global.cablesLost))
		
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+242, "Cables Recovered: " + string(global.cablesRecovered))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+241, "Cables Recovered: " + string(global.cablesRecovered))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+240, "Cables Recovered: " + string(global.cablesRecovered))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+262, "Dashes: " + string(global.dashes))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+261, "Dashes: " + string(global.dashes))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+260, "Dashes: " + string(global.dashes))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+282, "Lucky Bullets: " + string(global.luckyBullets))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+281, "Lucky Bullets: " + string(global.luckyBullets))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+280, "Lucky Bullets: " + string(global.luckyBullets))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+302, "Safe Connections: " + string(global.safeHits))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+301, "Safe Connections: " + string(global.safeHits))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+300, "Safe Connections: " + string(global.safeHits))
	
	
	//---- HIDE STATS ---//
	draw_set_halign(fa_center)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+322, "v Hide Stats v")
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+321, "v Hide Stats v")
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection+80,__view_get( e__VW.YView, 0 )+320, "v Hide Stats v")
	draw_set_halign(fa_left)
}