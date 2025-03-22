/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (o_player.comeFromDeath)
	{
		image_alpha = 0.4;
	}
	else
	{
		image_alpha = 1;
	}
}
draw_self();
