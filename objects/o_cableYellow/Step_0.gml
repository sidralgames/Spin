/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	
	if (attached = false)
	{
		
		if (inst._hp = 3) 
		{
			rope2.vertexAttachTo(first,inst, lengthdir_x(4, inst.image_angle+90), lengthdir_y(4, inst.image_angle+90) )
		}
		else if (inst._hp = 2) 
		{
			rope2.vertexAttachTo(first,inst, lengthdir_x(4, inst.image_angle+140), lengthdir_y(4, inst.image_angle+140) )
		}
		else
		{
			rope2.vertexAttachTo(first,inst, lengthdir_x(4, inst.image_angle+90), lengthdir_y(4, inst.image_angle+90) )
		}
		
		attached = true;
		//if (inst._hp = 3) 
		//{
		//	rope2.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+90),y + lengthdir_y(4, inst.image_angle+90) )
		//}
		//else if (inst._hp = 2) 
		//{
		//	rope2.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+140),y + lengthdir_y(4, inst.image_angle+140) )
		//}
		//else
		//{
		//	rope2.vertexChangeData(first,inst.x + lengthdir_x(4, inst.image_angle+90),y + lengthdir_y(4, inst.image_angle+90) )
		//}
	}
	
	
	

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
