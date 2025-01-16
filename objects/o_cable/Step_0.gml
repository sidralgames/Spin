/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	
	rope1.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+180),y + lengthdir_y(4, inst.image_angle+180) * inst.image_yscale)
	rope2.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+130),y + lengthdir_y(4, inst.image_angle+130) * inst.image_yscale)
	rope3.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+230),y + lengthdir_y(4, inst.image_angle+230) * inst.image_yscale)
	
	if (inst.dying)
	{
		instance_destroy();
		instance_destroy(instTope1);
		instance_destroy(instTope2);
		instance_destroy(instTope3);
	}
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}
