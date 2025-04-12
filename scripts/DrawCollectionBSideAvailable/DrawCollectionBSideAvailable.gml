// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawCollectionBSideAvailable()
{
	draw_set_halign(fa_left)
	draw_set_font(global.customFont13);
		
	if (vinylToPlay.kills >= vinylToPlay.minKillsBSide)
	{	
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+22, _stringBSide)
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+21, _stringBSide)
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+20, _stringBSide)
	}
	else
	{
		draw_set_color(global.lightBlue)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection ,__view_get( e__VW.YView, 0 )+22, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to unlock B-Side" )
		draw_set_color(global.yellow)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+21, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to unlock B-Side" )
		draw_set_color(global.pink)
		draw_text( __view_get( e__VW.XView, 0 )+ xDistCollection,__view_get( e__VW.YView, 0 )+20, string(vinylToPlay.minKillsBSide - vinylToPlay.kills) + " kills to unlock B-Side" )
	}
}