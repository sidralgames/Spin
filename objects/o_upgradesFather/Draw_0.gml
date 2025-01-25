/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (point_distance(x,y,o_player.x, o_player.y) < 70)
	{
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_font(global.customFont16);
		draw_set_color(global.lightBlue);
		draw_text(x,y+20,string(nameUp));
		draw_set_color(c_white);
		draw_text(x+1,y+21,string(nameUp));
	}
}
