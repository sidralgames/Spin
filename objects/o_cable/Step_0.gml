/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	if (inst._hp = 3) 
	{
		rope1.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+270),y + lengthdir_y(4, inst.image_angle+270) )
	}
	else if (inst._hp = 2) 
	{
		rope1.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+140),y + lengthdir_y(4, inst.image_angle+140) )
	}
	else
	{
		rope1.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+270),y + lengthdir_y(4, inst.image_angle+270) )
	}
	
	
	if (inst.dying)
	{
		instance_destroy();
		instance_destroy(instTope1);
	}
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

if (cableRoto = true)
{
	instance_destroy(instTope1)
	instance_destroy();
	//rope1.cleanup();
}