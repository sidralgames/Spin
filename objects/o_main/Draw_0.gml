/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign(fa_right)
if instance_exists(o_player)
{
	draw_text(600,20,"PlayerHP: " + string(o_player._hp))
}

if instance_exists(o_boss)
{
	draw_text(600,40,"BossHP: " + string(o_boss._hp))
}