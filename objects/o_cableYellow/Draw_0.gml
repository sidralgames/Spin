/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_player)
{
	if (o_player.comesFromDeath)
	{
		draw_set_alpha(0.3);
	}
	else
	{
		draw_set_alpha(1);
	}
}
if (verletSystemExists(verletSystem1)) 
{
	verletSystem1.draw();
}
