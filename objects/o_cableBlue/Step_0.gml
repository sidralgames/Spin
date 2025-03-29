/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	
	rope2.vertexChangeData(first,inst.x + lengthdir_x(6, inst.image_angle+200),y + lengthdir_y(6, inst.image_angle+200) )
	
	

	if (inst.dying)
	{
		instance_destroy();
		instance_destroy(instTope2);

	}
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}
