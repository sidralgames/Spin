// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawTextTriColor(_font, _align, _x, _y, _colorBack, _colorMiddle, _colorFront, _yOffColorBack, _yOffColorMiddle, _string)
{
	draw_set_font(_font);
	draw_set_halign(_align);
	draw_set_color(_colorBack)
	draw_text( __view_get( e__VW.XView, 0 )+ _x,__view_get( e__VW.YView, 0 )+ _y + _yOffColorBack, _string)
	draw_set_color(_colorMiddle)
	draw_text( __view_get( e__VW.XView, 0 )+ _x,__view_get( e__VW.YView, 0 )+ _y + _yOffColorMiddle, _string)
	draw_set_color(_colorFront)
	draw_text( __view_get( e__VW.XView, 0 )+ _x,__view_get( e__VW.YView, 0 )+ _y, _string)
}