// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionMoreStats()
{
	//---- MORE STATS ---//
	draw_set_font(global.customFont15);;
		
	//---- DRAW TOTAL STATS ---//
	yStat = lerp(yStat, 155, 0.15)
	draw_set_font(global.customFont14);
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-40, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-41, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-42, "Total Kills: " + string(global.totalKills))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-20, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-21, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat-22, "Total Deaths: " + string(global.totalDeaths))


	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+2, "Best Run: LVL " + string(global.maxLevelReached))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+1, "Best Run: LVL " + string(global.maxLevelReached))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat, "Best Run: LVL " + string(global.maxLevelReached))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+22, "Bullets Fired: " + string(global.bulletsFired))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+21, "Bullets Fired: " + string(global.bulletsFired))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+20, "Bullets Fired: " + string(global.bulletsFired))
	
	draw_set_halign(fa_left)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+42, "Falls from Vinyl: " + string(global.falls))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+41, "Falls from Vinyl: " + string(global.falls))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+40, "Falls from Vinyl: " + string(global.falls))
		
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+62, "Cables Lost: " + string(global.cablesLost))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+61, "Cables Lost: " + string(global.cablesLost))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+60, "Cables Lost: " + string(global.cablesLost))
		
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+82, "Cables Recovered: " + string(global.cablesRecovered))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+81, "Cables Recovered: " + string(global.cablesRecovered))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+80, "Cables Recovered: " + string(global.cablesRecovered))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+102, "Dashes: " + string(global.dashes))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+101, "Dashes: " + string(global.dashes))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+100, "Dashes: " + string(global.dashes))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+122, "Lucky Bullets: " + string(global.luckyBullets))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+121, "Lucky Bullets: " + string(global.luckyBullets))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+120, "Lucky Bullets: " + string(global.luckyBullets))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+142, "Safe Connections: " + string(global.safeHits))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+141, "Safe Connections: " + string(global.safeHits))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats,__view_get( e__VW.YView, 0 )+yStat+140, "Safe Connections: " + string(global.safeHits))
	
	
	//---- HIDE STATS ---//
	draw_set_font(global.customFont13);
	draw_set_halign(fa_center)
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat+167, "v Hide Stats v")
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat+166, "v Hide Stats v")
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistStats+80,__view_get( e__VW.YView, 0 )+yStat+165, "v Hide Stats v")
	draw_set_halign(fa_left)
}