/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
cx = room_width/2;
cy = room_height/2;
angle = 0;
_hp = 3;
global.walkAccelerationH = 0.2;
global.walkAccelerationV = 0.4;

global.bossAcceleration = 0.9;

r = 100;
theta = 0;

totalMaxSpeed = 2;
maxSpeed = 1;
maxSpeedV = 1.75;
initialSpeed = 1;
_speed = initialSpeed;
global._speed = 1;
realspeed=0;

slowed = false;
fwd = false;

walkSpeedH = global._speed;
walkSpeedV = global._speed+0.5;

diagSpeed = round((global._speed * 0.707));

diagAcc = round((global.walkAccelerationH * 0.707));
normlaAcc = global.walkAccelerationH;
state = "free";

spinDir = 1;
checkDir = false
_hpush =0;
_vpush =0;

distance = 2;

bossSpin = -0.6;
totalPush = 0;

fireRate = 10;
bnc = 1;
global.relativeSpeed = 1;
stopped = false;