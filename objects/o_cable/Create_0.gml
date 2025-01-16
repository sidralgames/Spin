/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties




contUnplugging = 0;
deattached = false;
_alpha = 1;

canCollide = false;
fric = 0.54;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor1 = c_white;
cableColor2 = global.yellow;
cableColor3 = global.red;
// Create verlet groups
_segments = 5
_segmentLenght = 4;

_widhtCable = 2

// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor1, _widhtCable, _segmentLenght, _segments+irandom_range(-1,2), 2, 100,canCollide);
rope2 = verletGroupCreateRope(verletSystem1, x, y, cableColor2, _widhtCable, _segmentLenght, _segments+irandom_range(-1,2), 2, 100,canCollide);
rope3 = verletGroupCreateRope(verletSystem1, x, y, cableColor3, _widhtCable, _segmentLenght, _segments+irandom_range(-1,2), 2, 100,canCollide);

//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_player)



plugged = false;
pluggedToStrandedShip = false;

		//// Attach an object to its last vertex
instTope1 = instance_create_layer(x,y,"Player", o_jackWhite);
instTope1.depth = depth-1;
rope1.vertexAttachObject(antelast, instTope1, vertexAttachmentType.both);

instTope2 = instance_create_layer(x,y,"Player", o_jackYellow);
instTope2.depth = depth-1;
rope2.vertexAttachObject(antelast, instTope2, vertexAttachmentType.both);

instTope3 = instance_create_layer(x,y,"Player", o_jackRed);
instTope3.depth = depth-1;
rope3.vertexAttachObject(antelast, instTope3, vertexAttachmentType.both);


alarm[0] = random_range(10,95);

