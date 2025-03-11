// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawFlashAndSlow(_aplhaFactor, _slow, _factorSlow, _color)
{
	global.autoPitch = true;
	with(o_player)
	{
		SlowDown(_slow, _factorSlow);
	}
	drawflashCont --;
	draw_set_alpha(abs(min(1,drawflashCont * _aplhaFactor)))
	draw_set_color(_color)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)	
}