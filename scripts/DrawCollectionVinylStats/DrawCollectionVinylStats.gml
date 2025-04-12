// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionVinylStats(_unlocked)
{
	//----- IF B-SIDE AVAILABLE ----//
	if (vinylToPlay.haveBSide = true)
	{
		DrawCollectionBSideAvailable()
	}
	
	//---- DRAW TRACK INFO ---//
	draw_set_halign(fa_left);
	draw_set_font(global.customFont16);
	
	if (_unlocked <= 0)
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+59, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+58, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+57, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}
	else if (_unlocked >= 1)
	{
				
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+59, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+58, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+57, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}

	if (_moreStats = true)
	{
		DrawCollectionMoreStats();
	}
	else
	{
		DrawCollectionStats();
	}
}

