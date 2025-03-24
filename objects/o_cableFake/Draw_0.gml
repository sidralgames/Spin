/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	draw_set_alpha(inst.image_alpha);
}

if (verletSystemExists(verletSystem1)) 
{
	verletSystem1.draw();
}

draw_set_alpha(1);