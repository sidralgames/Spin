/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;
	if (deatached = false)
	{
		rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, _widhtCable, _segmentLenght, _segments+irandom_range(-1,1), 2, 100,canCollide);
		rope1.vertexAttachTo(first, o_player)
		deatached = true;
		rope1.vertexDeAttachTo(first, o_player);
		rope1.vertexAttachTo(last-1, inst)
	}
}
else
{
	instance_destroy();
}

if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}
