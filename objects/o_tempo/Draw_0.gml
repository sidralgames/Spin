/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (contCorrupted > 0)
{
	image_blend = choose(c_aqua,global.yellow, c_fuchsia)
}
else
{
	image_blend = c_white;
}
draw_self();
draw_sprite_ext(s_tempoMeter,0,x,meterY,scale,scale,0,image_blend, image_alpha)