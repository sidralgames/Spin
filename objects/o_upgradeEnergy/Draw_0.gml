/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_ellipse_color(x-20,y+10, x+20, y+20,c_black,c_black,false)
draw_self();

if instance_exists(o_player)
{
	if (point_distance(x,y,o_player.x, o_player.y) < 70)
	{
		draw_set_halign(fa_center)
		draw_text_color(x,y+20, string("More Energy"),c_white,c_white,c_white,c_white,1)
	}
}