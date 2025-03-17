/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
aiming = false;
recoilGun = 0;
movingController = false;
comesFromDeath = false;
contComesFromDeath = 120;
lastTouchedX = x;
lastTouchedY = y;
runningAgainstDisc = false;
slowedFromAHit = false;
goSlow = false;
tocado = false;
invincibleTime = 30;
cx = room_width/2;
cy = room_height/2;
scaleGunY = 1;
inDash = false;
dashTime = 60;
squashing = false;
scaleReset = false;
angle = 0;
_hp = 3;
moveDir = 0;
haxis = 0;
vaxis = 0;
contDieMax = 10;
contDie = contDieMax;

global.walkAccelerationH = 0.2;
global.walkAccelerationV = 0.4;
off = random_range(-5,5)
global.bossAcceleration = 0.9;
vueltas = 0;
r = 100;
theta = 0;
vueltaContadaTime=0;
vueltaContada = 0;
totalMaxSpeed = 2;
maxSpeed = 1;
maxSpeedV = 1.75;
initialSpeed = 1.15;
_speed = initialSpeed + global.speedAux;

realspeed=0;
recoil = false;
contRecoil = 10;

global.slowed = false;
global.fwd = false;

state = "free";
dying = false
spinDir = 1;
checkDir = false
_hpush =0;
_vpush =0;

distance = 2;

bossSpin = global.vinylSpin;
totalPush = 0;


bnc = 1;
global.relativeSpeed = 1;
stopped = false;
bouncedWhileStopped = false;
distGun = 24;
cable = instance_create_layer(x,y,"Cable",o_cable);
cableRed = instance_create_layer(x,y,"Cable",o_cableRed);
cableYellow = instance_create_layer(x,y,"Cable",o_cableYellow);

gunSprite = s_gun;
global.energy = global.energyTotal;

dashEnergyRecover = 0.45;

fireRate = 10;
fireRateShotgun = 20;

shootEnergy = 2;
shotgunEnergy = 5;
dashEnergyMin = 25;
reloading = false;

slowMoEnergy = 0.6;
tempoCorrupted = false;
aiming = false;
moving = false;

offShotgun = -10;
weapon = global.weapon