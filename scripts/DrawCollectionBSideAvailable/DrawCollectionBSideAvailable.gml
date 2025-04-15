// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionBSideAvailable()
{
	draw_set_halign(fa_left)
	draw_set_font(global.customFont12);
		
	if (vinylToPlay.kills >= vinylToPlay.minKillsBSide)
	{	
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+117-moreStatsOff, _stringBSide)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+116-moreStatsOff, _stringBSide)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+115-moreStatsOff, _stringBSide)
	}
	else
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection ,__view_get( e__VW.YView, 0 )+117-moreStatsOff, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to B-Side" )
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+116-moreStatsOff, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to B-Side" )
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+115-moreStatsOff, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to B-Side" )
	}
}