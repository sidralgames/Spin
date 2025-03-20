/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

type = collisionType.custom;
cx = room_width/2;
cy = room_height/2;
r = point_distance(x,y,room_width/2, room_height/2);
theta = point_direction(room_width/2, room_height/2, x, y);
type = collisionType.custom;
bossSpin = global.vinylSpin;
totalPush = 0;
totalMaxSpeed = 2;
bnc = 1;
realspeed = 0;
_speed = 0.5;
bounced = false;
chasingPlayer = false;
chasingPlayer = false;
distToPlayer = 0;

_hp = 10;
contDie = 5;
dying = false;
scaleReset = false;
contBomb = 60;
contCanChase = 60;
canChase = true;
bounced = false;
image_xscale = 1;
image_yscale = 1;
spinSpeed = 2;