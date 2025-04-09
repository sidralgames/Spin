// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionVinylStats(_unlocked)
{
	draw_set_halign(fa_left);
	draw_set_font(global.customFont16);
	
	if (_unlocked <= 0)
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+47, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+46, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+45, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName))
			
	}
	else if (_unlocked >= 1)
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+47, string(vinylToPlay.number + 1) + ". " + string(vinylToPlay.songName) + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+46, string(vinylToPlay.number + 1) + ". " + string(vinylToPlay.songName) + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ 30,__view_get( e__VW.YView, 0 )+45, string(vinylToPlay.number + 1) + ". " + string(vinylToPlay.songName) + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}

	draw_set_font(global.customFont14);
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+242, "Kills: " + string(vinylToPlay.kills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+241, "Kills: " + string(vinylToPlay.kills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+240, "Kills: " + string(vinylToPlay.kills))
	

	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+262, "Deaths: " + string(vinylToPlay.deaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+261, "Deaths: " + string(vinylToPlay.deaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+260, "Deaths: " + string(vinylToPlay.deaths))
	
	draw_set_font(global.customFont13);
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+302, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+301, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+300, "Total Kills: " + string(global.totalKills))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+322, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+321, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ 50,__view_get( e__VW.YView, 0 )+320, "Total Deaths: " + string(global.totalDeaths))
}