/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	x=o_player.x;
	y = o_player.y
}

Controls_Input();

w = surface_get_width(application_surface)
_scale = display_get_width() / w;