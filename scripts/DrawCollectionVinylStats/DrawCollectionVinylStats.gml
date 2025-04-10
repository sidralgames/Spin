// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionVinylStats(_unlocked)
{
	//----- IF B-SIDE AVAILABLE ----//
	if (vinylToPlay.kills >= vinylToPlay.minKillsBSide)
	{	
		draw_set_halign(fa_left)
		draw_set_font(global.customFont12);
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+32, _stringBSide)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+31, _stringBSide)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+30, _stringBSide)
	}
	
	//---- DRAW TRACK INFO ---//
	draw_set_halign(fa_left);
	draw_set_font(global.customFont16);
	
	if (_unlocked <= 0)
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+67, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+66, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+65, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}
	else if (_unlocked >= 1)
	{
				
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+67, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+66, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+65, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}

	//---- DRAW TRACK STATS ---//
	draw_set_font(global.customFont14);
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+232, "Kills: " + string(_stringKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+231, "Kills: " + string(_stringKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+230, "Kills: " + string(_stringKills))
	

	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+252, "Deaths: " + string(_stringDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+251, "Deaths: " + string(_stringDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+250, "Deaths: " + string(_stringDeaths))
	
	
	//---- DRAW TOTAL STATS ---//
	draw_set_font(global.customFont13);
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+292, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+291, "Total Kills: " + string(global.totalKills))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+290, "Total Kills: " + string(global.totalKills))
	
	draw_set_color(global.lightBlue);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+312, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.yellow);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+311, "Total Deaths: " + string(global.totalDeaths))
	draw_set_color(global.pink);
	draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+310, "Total Deaths: " + string(global.totalDeaths))
}