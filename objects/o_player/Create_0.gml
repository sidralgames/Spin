/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;

key_x = keyboard_check(ord("X"));
key_shoot = mouse_check_button(mb_left);

key_escudo = gamepad_button_check(0, gp_shoulderrb)
key_slowmo = gamepad_button_check(0, gp_shoulderlb)
key_L1_Pressed = gamepad_button_check_pressed(0, gp_shoulderl) || keyboard_check_pressed(vk_space) ||  mouse_check_button_pressed(mb_right);

haveShield = false;
aiming = false;
recoilGun = 0;
movingController = false;
upgsCreated = 0;
levelSelector = false;
upgradesInPlayer = 0;

//--REAPPERAR AFTER DEATH--//
gamepad_set_vibration(0,0,0);
image_alpha = 1;
comeFromDeath = false;
contComeFromDeath = 100;
spotRadInitial = 25;
spotRad = spotRadInitial;
lastTouchedX = x;
lastTouchedY = y;
checkVinylSpin = false;

runningAgainstDisc = false;
slowedFromAHit = false;
goSlow = false;
tocado = false;

invincibleTime = 60;

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
if instance_exists(o_boss)
{
	bossSpin = global.vinylSpin;
}
else
{
	bossSpin = -0.6
}
totalPush = 0;


bnc = 1;
global.relativeSpeed = 1;
stopped = false;
bouncedWhileStopped = false;
distGun = 24;
cable = instance_create_layer(x,y,"Cable",o_cable);
cableRed = instance_create_layer(x,y,"Cable",o_cableRed);
cableYellow = instance_create_layer(x,y,"Cable",o_cableYellow);

tocadoVibrationTime = 10;
loseHP = true;
thisHitHitted = irandom(2);

gunSprite = s_gun;
global.energy = global.energyTotal;

fireRate = 10;
fireRateShotgun = 20;

shootEnergy = 2;
shotgunEnergy = 5;

reloading = false;

slowMoEnergy = 0.6;
tempoCorrupted = false;
aiming = false;
moving = false;

offShotgun = -10;
weapon = global.weapon;

shieldBurned = false;