/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_font(global.customFont16);
draw_set_color(global.lightBlue);
draw_text(x,y+20,"HowToPlay");
draw_set_color(c_white);
draw_text(x+1,y+21,"HowToPlay");

if gamepad_button_check(0, gp_start)
{
	global.howToPlay = false;
	instance_destroy();
}