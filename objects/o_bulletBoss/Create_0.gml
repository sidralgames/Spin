/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
type = collisionType.custom;

_hp = 150;
timeToExplode = 100;

contDie = 5;
dying = false;
scaleReset = false;

cx = room_width/2;
cy = room_height/2;
r = 100;
theta = 0;

bossSpin = -0.6;
totalPush = 0;
totalMaxSpeed = 2;
scaleExplo = random_range(1.4,1.6);
createHole = false;