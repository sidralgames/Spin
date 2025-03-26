/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (point_distance(x,y,o_player.x, o_player.y) < 50)
	{
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_font(global.customFont12);
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y+12,string(nameDown));
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y+9,string(nameDown));
		draw_set_color(global.lightBlue);
		draw_text(o_upgrades.x,o_upgrades.y+11,string(nameDown));
		draw_set_color(c_white);
		draw_text(o_upgrades.x,o_upgrades.y+10,string(nameDown));
		
		draw_set_font(global.customFont16);
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y-43,string(nameUp));
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y-46,string(nameUp));
		draw_set_color(global.lightBlue);
		draw_text(o_upgrades.x,o_upgrades.y-44,string(nameUp));
		draw_set_color(c_white);
		draw_text(o_upgrades.x,o_upgrades.y-45,string(nameUp));
		//draw_set_font(global.customFont12);
		//draw_set_color(c_black);
		//draw_text(x,y-43,string(nameUp));
		//draw_set_color(c_black);
		//draw_text(x,y-46,string(nameUp));
		//draw_set_color(global.lightBlue);
		//draw_text(x,y-44,string(nameUp));
		//draw_set_color(c_white);
		//draw_text(x+1,y-45,string(nameUp));
	}
}
