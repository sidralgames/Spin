// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionVinylStats(_unlocked)
{
	xDistCollection = lerp(xDistCollection, 50, 0.1)
	
	//----- IF B-SIDE AVAILABLE ----//
	draw_set_alpha(_alphaTitle)
	
	if (vinylToPlay.haveBSide = true) && (_moreStats = false)
	{
		DrawCollectionBSideAvailable()
	}
	
	//---- DRAW TRACK INFO ---//
	draw_set_halign(fa_left);
	draw_set_font(global.customFont20);
	
	_alphaTitle = lerp(_alphaTitle, 1.2, 0.15)
	

	if (_unlocked <= 0)
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+27-moreStatsOff, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+26-moreStatsOff, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+25-moreStatsOff, string(vinylToPlay.number + 1) + ". " + "?????" + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}
	else if (_unlocked >= 1)
	{
				
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+27-moreStatsOff, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+26-moreStatsOff, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+25-moreStatsOff, string(vinylToPlay.number + 1) + ". " + _songName + "\n" + string(vinylToPlay.albumName) + "\n" + string(vinylToPlay.artistName))
			
	}
	draw_set_alpha(1);
	
	if (_moreStats = true)
	{
		moreStatsOff = lerp(moreStatsOff, 15, 0.15)
		DrawCollectionMoreStats();
	}
	else
	{
		moreStatsOff = lerp(moreStatsOff, 0, 0.15)
		DrawCollectionStats();
	}
}

