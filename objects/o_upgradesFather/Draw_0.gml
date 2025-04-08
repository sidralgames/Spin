/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	//if (y> room_height/2)
	//{
	//	off = -1;
	//}
	//else
	//{
	//	off = 1;
	//}
	
	if (point_distance(x,y,o_player.x, o_player.y) < 50)
	{
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_font(global.customFont14);
		draw_set_color(c_black);
		draw_text(x,y+25,string(upgradeName));
		draw_set_color(c_black);
		draw_text(x,y+22,string(upgradeName));
		draw_set_color(global.lightBlue);
		draw_text(x,y+24,string(upgradeName));
		draw_set_color(c_white);
		draw_text(x,y+23,string(upgradeName));
		
		draw_set_valign(fa_center);
		draw_set_font(global.customFont13);
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y-3,string(upgradeDesc));
		draw_set_color(c_black);
		draw_text(o_upgrades.x,o_upgrades.y-6,string(upgradeDesc));
		draw_set_color(global.lightBlue);
		draw_text(o_upgrades.x,o_upgrades.y-4,string(upgradeDesc));
		draw_set_color(c_white);
		draw_text(o_upgrades.x,o_upgrades.y-5,string(upgradeDesc));
		draw_set_valign(fa_top);
		//draw_set_font(global.customFont12);
		//draw_set_color(c_black);
		//draw_text(x,y-43,string(upgradeName));
		//draw_set_color(c_black);
		//draw_text(x,y-46,string(upgradeName));
		//draw_set_color(global.lightBlue);
		//draw_text(x,y-44,string(upgradeName));
		//draw_set_color(c_white);
		//draw_text(x+1,y-45,string(upgradeName));
	
	draw_sprite_ext(s_xConfirm, 0,  __view_get( e__VW.XView, 0 )+ 530,__view_get( e__VW.YView, 0 )+335,1,1,0,image_blend, image_alpha)

	}
}
