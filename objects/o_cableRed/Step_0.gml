/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	
	if (inst._hp = 2)
	{
		rope3.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+220),y + lengthdir_y(4, inst.image_angle+220) )
	}
	else if (inst._hp = 1)
	{
		rope3.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+180),y + lengthdir_y(4, inst.image_angle+180) )
	}
	else
	{
		rope3.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+180),y + lengthdir_y(4, inst.image_angle+180) )
	}
	if (inst.dying)
	{
		instance_destroy();
		instance_destroy(instTope3);
	}
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

if (cableRoto = true)
{
	instance_destroy(instTope3)
	instance_destroy();
	//rope1.cleanup();
}